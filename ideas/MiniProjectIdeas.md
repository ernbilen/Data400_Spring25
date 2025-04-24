## Idea 1
### Topic 
Given that I am from Baltimore, MD, it was only fitting to research Baltimore. I will be comparing Baltimore crime data to Los Angeles crime data. I aim to dive deeper into what time of year crimes happen most in each city.

### Data Source(s), variables
Looking into [Open Baltimore](https://data.baltimorecity.gov/) and [Data.gov](https://catalog.data.gov/dataset/?publisher=data.lacity.org&organization=city-of-los-angeles), I found the datasets I will be using. The Baltimore dataset ([Part 1 Crime Data (Legacy SRS)](https://data.baltimorecity.gov/datasets/e0992dddbbf64231976d5d57763ec4f5_0/explore?location=39.309038%2C-76.607937%2C14.92)) shows the arrests from July 31, 2023 to January 22, 2025, with 644,737 rows. The main variables that I will focus on are CrimeDateTime, CrimeCode, Weapon, Gender, Age, and Race. On Open Baltimore's website, there is an associated dataset that has the CrimCodes, called [Crime Codes](https://data.baltimorecity.gov/documents/e6ca4eadecdc475a961f68bc314e2a86/about). The LA dataset ([Crime Data from 2020 to Present](https://catalog.data.gov/dataset/crime-data-from-2020-to-present)) shows the arrests from November 10, 2020, to January 24, 2025, with 1,004,848 rows. The main variables that I will be using are DATE_OCC, Crm_Cd_Desc, Vict_Age, Vict_Sex, and Weapon_Desc. 

### Models
Before any modeling, I will have to do quite a bit of preprocessing. In both of my crime datasets, many columns will have to be dropped and some variables will have to be converted to numerical or factor types. Many missing values will also need to be filled in. 
I will be doing a Time Series model to predict future crime rates in both cities, Logistic Regression or Random Forest to predict the likelihood of crime occurrences based on time, and K-means clustering to cluster high crime times.


### How would your project affect stakeholders?
This project will affect the people living in Baltimore and Los Angeles the most. They will be able to see the crime rates in their city and when the crime is at a high. Not only will civilians be affected by this data but the police departments in these cities as well. They will be able to visualize the crime that occurs in their city and compare it to another high crime-ridden city. 

### Ethical Complications
The ethical complications that I will be running into are racial and gender biases. Given how diverse and stereotyped both cities are, there are high chances of biased arrests based on gender, race, ethnicity, or age. 

## Idea 2
### Topic 
Given that I am from Baltimore, MD, it was only fitting to research Baltimore. I will be diving deeper into Baltimore crime data from 2023 to 2025. I want to see if there is correlation between high crime areas and addresses of people on the [Gun Offenders Registery](https://data.baltimorecity.gov/datasets/8cb25420508541b1ac6d9489b8ad0864_0/explore?location=39.297177%2C-76.620550%2C10.83). I want to also see if there is a time of year where crimes are at a high.

### Data Source(s), variables
Looking into [Open Baltimore](https://data.baltimorecity.gov/), I found the datasets I will be using. The Baltimore crime data ([Part 1 Crime Data (Legacy SRS)](https://data.baltimorecity.gov/datasets/e0992dddbbf64231976d5d57763ec4f5_0/explore?location=39.309038%2C-76.607937%2C14.92)) shows the arrests from July 31, 2023 to January 22, 2025, with 644,737 rows. The main variables that I will focus on are CrimeDateTime, CrimeCode, Weapon, Gender, Age, Race, Location, and Neighborhood. On Open Baltimore's website, there is an associated dataset that has the CrimCodes, called [Crime Codes](https://data.baltimorecity.gov/documents/e6ca4eadecdc475a961f68bc314e2a86/about). The Gun Offenders Registry shows the people who were convicted of at least one gun-related offense between March 22, 2024, and January 27, 2025. There are 3,739 rows. The main variables I will be using are CreatedDate, DateOfBirth, Gender, Race, FullAddress, and Neighborhood.

### Models
Before any modeling, I will have to do quite a bit of preprocessing. In both of my crime datasets, many columns will have to be dropped and some variables will have to be converted to numerical or factor types. Many missing values will also need to be filled in. 
I will be doing a Time Series model to predict future crime rates in different parts of the city, Logistic Regression or Random Forest to predict the likelihood of crime occurrences based on location and/or time, and K-means clustering to cluster high crime areas and times. I will also be moving the datasets to GoogleEarth to create a map of the arrests and the homes of gun offenders.


### How would your project affect stakeholders?
This project will affect the people living in Baltimore, but more specifically, living in the neighborhoods of the arrests and/or the gun offenders. They will be able to see when crime is at a high in their part of the city and will see if there is a connection between the crime rates and gun offenders' homes. Not only will civilians be affected by this data but the police departments all over Baltimore City. They will be able to visualize the crime that occurs in their district and see if the time of year affects the crime.

### Ethical Complications
The ethical complications that I will be running into are racial and gender biases. Given how diverse and stereotyped Baltimore City is, there are high chances of biased arrests based on gender, race, ethnicity, or age. 
