<img src="https://upload.wikimedia.org/wikipedia/en/0/03/National_Basketball_Association_logo.svg" width="150"/>



# 🏀 NBA Clutch Time Efficiency Analysis

## Evaluating Feature Importance for Predicting Clutch Scoring Efficiency Gain  
Can we determine which players will rise to the occasion when it matters most?

## 📊 Overview  
What makes a player "clutch" has long been debated by fans, analysts, and front offices alike. The challenge lies in identifying the characteristics that predict whether a player will perform under pressure or falter in key moments. This project aims to define what influences clutch scoring efficiency and uncover which players consistently elevate their performance in the final moments of close games.

We explore several key questions: Which features are associated with changes in clutch scoring efficiency? Who are the top 15 most efficient clutch-time risers based on scoring efficiency gain? Which players quietly perform efficiently in clutch situations despite minimal increases in shot attempts? Who are the go-to scorers that shine with high usage in crunch time? And who are the volume shooters that increase their shot attempts but not their efficiency?

## 📭 Data Collection  
The data for this project comes from NBA.com, retrieved using the [nba_api](https://github.com/swar/nba_api) package. We compiled regular and clutch-time player statistics for every regular season game between 2000 and 2023. After merging the datasets for each season, we filtered out players lacking both regular and clutch stats or those with fewer than 30 minutes and 20 field goal attempts in clutch-time.  

We then normalized player stats to allow for fairer comparisons. Key derived variables included per-minute and per-FGA scoring rates for both regular and clutch time, along with their differences (PTS_delta and PTS_per_FGA_delta). We also calculated shot volume changes (FGA_per_min_delta), as well as changes in assists, turnovers, and field goal percentage.

## 🏭 Model Architecture  
To identify the most important predictors of clutch scoring efficiency gain (PTS_per_FGA_delta), we used a Random Forest Regression Model. The model was developed using an 80/20 train-test split. We employed [GridSearchCV](https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.GridSearchCV.html) from [scikit-learn](https://scikit-learn.org/stable/) to fine-tune hyperparameters. Model performance was evaluated using R², RMSE, and MSE.

To explain the model’s predictions, we used SHAP values to understand each feature’s contribution to the output. We also created an actual vs. predicted values graph to visually inspect how well the model performed. These tools allowed us to interpret both the effectiveness of our predictive model and the relative importance of each feature.

## 💎 Key Insights  
Our model highlighted FG_PCT_clutch (field goal percentage during clutch time) as the most impactful predictor of scoring efficiency gain, which reinforces the importance of shooting accuracy when it matters most. FG_PCT_overall and PLUS_MINUS_clutch followed closely as influential indicators. The Random Forest Model explained over 53% of the variation in PTS_per_FGA_delta, suggesting that while clutch performance has intangible elements, regular season stats can provide meaningful insight.

## 💡 Implications  
Using predictive models to evaluate clutch performance introduces limitations, such as ignoring psychological factors like confidence or pressure. There is also the risk of misjudging a player by numbers alone, without considering context, role, or sample size.  

However, these models can be valuable tools. Coaches and analysts may use them to optimize late-game strategy or uncover hidden clutch talent. Scouts and front offices can combine data-driven insights with traditional evaluations to make better-informed decisions. For fans and media, the findings challenge long-standing narratives about what it means to be "clutch."

## 📋 Future Work  
Future improvements include testing other machine learning models to compare performance, incorporating playoff data to explore postseason trends, and analyzing financial data like contract values in relation to clutch-time performance.

## 🎓 Credits  
This project was completed for Dickinson College’s DATA400 (Capstone in Data Analytics, Spring 2025). It was developed by Michael Freda and Mahim Dahal, under the guidance of Professor Eren Bilen.