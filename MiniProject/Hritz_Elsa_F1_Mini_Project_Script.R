install.packages("dplyr")
library(httr)
library(jsonlite)
library(dplyr)
library(stringr)
library(ggplot2)

# Perform GET requests for all data frames
response_weath <- GET('https://api.openf1.org/v1/weather')
weather_data <- fromJSON(content(response_weath, 'text'))
print(weather_data)

response_ses <- GET('https://api.openf1.org/v1/sessions')
session_data <- fromJSON(content(response_ses, 'text'))
str(session_data)
print(session_data)

response_inc <- GET('https://api.openf1.org/v1/race_control')
incidents_data <- fromJSON(content(response_inc, 'text'))
str(incidents_data)
print(incidents_data)

response_driver <- GET('https://api.openf1.org/v1/drivers')
driver_data <- fromJSON(content(response_driver, 'text'))
str(driver_data)
print(driver_data)

#Could not get data below (Requests timed out too large a query)
response_car <- GET('https://api.openf1.org/v1/car_data?date>=2024-01-01T00:00:00+00:00&meeting_key=1224')
car_data <- fromJSON(content(response_car, 'text'))
str(car_data)
print(car_data)

response_laps <- GET('https://api.openf1.org/v1/laps')
lap_data <- fromJSON(content(response_laps, 'text'))
str(lap_data)
print(lap_data)

response_stints <- GET('https://api.openf1.org/v1/stints')
stint_data <- fromJSON(content(stints, 'text'))
str(stint_data)
print(stint_data)

response_pos <- GET('https://api.openf1.org/v1/position')
pos_data <- fromJSON(content(response_pos, 'text'))
str(pos_data)
print(pos_data)

response_loc <- GET('https://api.openf1.org/v1/location')
loc_data <- fromJSON(content(response_loc, 'text'))
str(loc_data)
print(loc_data)


#Join all available tables
head(session_data)
head(weather_data)
head(incidents_data)
head(driver_data)
all_f1_data <- session_data %>% full_join(weather_data, by = c("session_key", "meeting_key")) %>%
  full_join(incidents_data, by = c("meeting_key", "session_key")) %>%
  left_join(driver_data, by = c("meeting_key", "session_key", "driver_number"))
str(all_f1_data)

all_f1_data<-select(all_f1_data,
                    session_type, session_name, date_start, year, 
                    air_temperature, humidity, pressure, rainfall, track_temperature, wind_direction,
                    wind_speed, scope, message)

#Create df of messages with various conditions to find wording for crashes
unique_message<- filter(all_f1_data, session_type!="Practice", str_detect(message,"COLLISION"),!str_detect(message,"FIA STEWARDS:"))

#Create binary column to indicate a crash occurred
all_f1_data <- all_f1_data %>%
  mutate(crash = if_else(str_detect(message, "COLLISION"), 1, 0))
str(all_f1_data)
all_f1_data$crash <- as.factor(all_f1_data$crash)


#Find different weather conditions to separate data on
unique_weath <- unique(all_f1_data$rainfall)

hist(all_f1_data$wind_speed, main="Wind Speed Frequencies", xlab ="Wind Speed", col="red")
max(all_f1_data$wind_speed)


clearDF<-filter(all_f1_data, rainfall==0)
clearDF
#noRainWindDF<- filter(all_f1_data, rainfall==0, wind_speed>0)
#noRainWindDF
rainyDF<- filter(all_f1_data, rainfall==1)
rainyDF
#RainWindDF<- filter(all_f1_data, rainfall==1, wind_speed>0)
#RainWindDF

rainyCount <- nrow(rainyDF)
clearCount <- nrow(clearDF)


# Create countsdf data frame
countsdf <- data.frame(
  category = c("Rainy", "Clear"),  # Categories for each bar
  count = c(rainyCount, clearCount)  # The count values
)

# Ensure count column is numeric
countsdf$count <- as.numeric(countsdf$count)

# Create the barplot
barplot(countsdf$count, 
        names.arg = countsdf$category,  # Set category names for each bar
        main = "Barplot of Counts for Different Conditions",
        xlab = "Category",
        ylab = "Count",
        col = c("red", "blue"),
        border = "black")

#Predictions
##Clear
###Cleaning the Columns
clearDF <- na.omit(clearDF)
str(clearDF)
clearDFClean <- clearDF %>% mutate_at(c("air_temperature", "humidity", "pressure", "track_temperature", "wind_speed", "year", "wind_direction"), as.numeric)
clearDFClean <- clearDFClean %>% mutate_at(c(  "scope", "crash", "session_type", "session_name", "rainfall"), as.factor)
clearDFClean <- clearDFClean %>% select(!rainfall)
clearDFClean <- clearDFClean %>% select(!message)
clearDFClean <- clearDFClean %>% select(!date_start)
#clearDF <- clearDF[clearDF$circuit_key %in% names(sort(table(clearDF$circuit_key), decreasing = TRUE)[1:10]), ]
str(clearDFClean)
###Creating Training and Testing Data Sets
trainIndexClear <- sample(1:nrow(clearDFClean), 0.8*nrow(clearDF))
validationIndexClear <- setdiff(1:nrow(clearDFClean), trainIndexClear)
clear_train <- clearDFClean[trainIndexClear,]
str(clear_train)
clear_validation <- clearDFClean[validationIndexClear, ]
str(clear_validation)
length(which(clearDF$crash==0))
length(which(clearDF$crash==1))
table(clearDF$crash)
class0ClearTrain <- clear_train%>% filter(crash ==0)
nrow(class0ClearTrain)
class1ClearTrain <- clear_train%>% filter(crash ==1)
class1ClearTrain <- class1ClearTrain[sample(nrow(class1ClearTrain), 1000, replace = TRUE ),]
class0ClearTrain <- class0ClearTrain[sample(nrow(class0ClearTrain), 1000, replace = FALSE ),]
train_hybridClear <- rbind(class1ClearTrain, class0ClearTrain)
head(train_hybridClear$crash)
sapply(train_hybridClear, function(x) if(is.factor(x)) length(unique(x)) else NA)
crash_hybrid_clear <- glm(crash~., train_hybridClear, family = "binomial")
crash_pred_hyb_clear<- predict(crash_hybrid_clear, clear_validation, type = "response")

crash_clear_pred_class <- ifelse(crash_pred_hyb_clear >= 0.5, 1, 0)
table(clear_validation$crash, crash_clear_pred_class)
summary(crash_hybrid_clear)

install.packages("pROC")
install.packages("ggplot2")
library(pROC)
roc_log_pred_clear <- roc(clear_validation$crash, crash_clear_pred_class,plot=TRUE, legacy.axes = TRUE, 
                    percent =TRUE, xlab="False Positive Percentage", ylab="True Positive Percentage")
auc_value_clear <- auc(roc_log_pred_clear)
auc_value_clear


##Rainy
###Cleaning the Columns
rainyDF <- na.omit(rainyDF)
str(rainyDF)
rainyDFClean <- rainyDF %>% mutate_at(c("air_temperature", "humidity", "pressure", "track_temperature", "wind_speed", "year", "wind_direction"), as.numeric)
rainyDFClean <- rainyDFClean %>% mutate_at(c(  "scope", "crash", "session_type", "session_name", "rainfall"), as.factor)
rainyDFClean <- rainyDFClean %>% select(!rainfall)
rainyDFClean <- rainyDFClean %>% select(!message)
rainyDFClean <- rainyDFClean %>% select(!date_start)
#rainyDF <- rainyDF[rainyDF$circuit_key %in% names(sort(table(rainyDF$circuit_key), decreasing = TRUE)[1:10]), ]
str(rainyDFClean)
###Creating Training and Testing Data Sets
trainIndexrainy <- sample(1:nrow(rainyDFClean), 0.8*nrow(rainyDF))
validationIndexrainy <- setdiff(1:nrow(rainyDFClean), trainIndexrainy)
rainy_train <- rainyDFClean[trainIndexrainy,]
str(rainy_train)
rainy_validation <- rainyDFClean[validationIndexrainy, ]
str(rainy_validation)
length(which(rainyDF$crash==0))
length(which(rainyDF$crash==1))
table(rainyDF$crash)
class0rainyTrain <- rainy_train%>% filter(crash ==0)
nrow(class0rainyTrain)
class1rainyTrain <- rainy_train%>% filter(crash ==1)
class1rainyTrain <- class1rainyTrain[sample(nrow(class1rainyTrain), 1000, replace = TRUE ),]
class0rainyTrain <- class0rainyTrain[sample(nrow(class0rainyTrain), 1000, replace = FALSE ),]
train_hybridrainy <- rbind(class1rainyTrain, class0rainyTrain)
head(train_hybridrainy$crash)
sapply(train_hybridrainy, function(x) if(is.factor(x)) length(unique(x)) else NA)
crash_hybrid_rainy <- glm(crash~., train_hybridrainy, family = "binomial")
crash_pred_hyb_rainy<- predict(crash_hybrid_rainy, rainy_validation, type = "response")

crash_rainy_pred_class <- ifelse(crash_pred_hyb_rainy >= 0.5, 1, 0)
table(rainy_validation$crash, crash_rainy_pred_class)
summary(crash_hybrid_rainy)

install.packages("pROC")
install.packages("ggplot2")
library(pROC)
roc_log_pred_rainy <- roc(rainy_validation$crash, crash_rainy_pred_class,plot=TRUE, legacy.axes = TRUE, 
                          percent =TRUE, xlab="False Positive Percentage", ylab="True Positive Percentage")
auc_value_rainy <- auc(roc_log_pred_rainy)
auc_value_rainy




clear_crash <- filter(clearDFClean, crash==1)
clear_safe <- filter(clearDFClean, crash==0)
hist(clear_crash$humidity, main=" Humidity Distribution Clear Crashes", ylab = "Frequency", xlab= "Humidity", col= "blue")
hist(clear_safe$humidity, main=" Humidity Distribution Clear Safe Drives ", ylab= "Frequency", xlab= "Humidity", col="red")
hist(clear_crash$pressure, main="Pressure Distribution Clear Crashes", ylab = "Frequency", xlab= "Pressure", col= "blue")
hist(clear_safe$pressure, main="Pressure Distribution Clear Safe Drives ", ylab= "Frequency", xlab= "Pressure", col="red")
hist(clear_crash$wind_speed, main="Wind Speed Distribution Clear Crashes", ylab = "Frequency", xlab= "Speed (m/h)", col= "blue", xlim= c(0, 10))
hist(clear_safe$wind_speed, main="Wind Speed Distribution Clear Safe Drives ", ylab= "Frequency", xlab= "Speed (m/h)", col="red")
