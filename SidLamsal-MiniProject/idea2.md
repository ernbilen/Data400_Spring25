# Idea 2: NBA Player Salaries  

## Research Question  
- What factors—both on-court performance and off-court influence—are most predictive of NBA player salaries?  

NBA salaries vary significantly, and while performance is an obvious factor, other elements like marketability, social media presence, and endorsement deals likely play a role in salary negotiations. This project aims to analyze a combination of in-game statistics (e.g., points per game, assists, defensive metrics) and off-court factors (e.g., Instagram followers, brand deals, media coverage) to determine which variables best predict a player's earnings.  

Given the NBA's salary cap and contract structures, this analysis could also explore how different teams allocate their payrolls—whether they prioritize star players, depth, or specific skill sets. Additionally, it could examine salary disparities by position, experience level, and market size.  

## Data Source  
The data will be semi-current or adjusted for inflation to avoid bias. Data sources include:  

- **On-Court Performance Data**: [Basketball-Reference](https://www.basketball-reference.com), [NBA Stats](https://www.nba.com/stats), and [ESPN](https://www.espn.com/nba/stats) provide detailed player statistics.  
- **Salary Data**: [Spotrac](https://www.spotrac.com/nba/) and [HoopsHype](https://hoopshype.com/salaries/) offer publicly available NBA salary information.  
- **Off-Court Influence**: Social media metrics from Instagram, Twitter, and TikTok (scraped or accessed via APIs), Forbes reports on athlete earnings, and news coverage on endorsement deals.  

Data will be aggregated to create a comprehensive dataset of player statistics, salaries, and external influence metrics.  

## Models  
A variety of models will be used to analyze player salary prediction and salary allocation trends:  

- **Regression Models (Linear, Lasso, Ridge)**: To quantify the impact of different variables on salary.  
- **Tree-Based Models (Random Forest, XGBoost)**: To better capture non-linear relationships between variables.  
- **Clustering**: To group players by salary tiers and identify common characteristics.  
- **Neural Networks**: To test if deep learning models can outperform traditional statistical methods in salary prediction.  

Data visualization techniques will also be employed to showcase trends, such as how player salaries have changed over time or how different franchises prioritize spending.  

## Implications for Stakeholders  
Understanding the key factors driving NBA salaries could benefit multiple stakeholders:  

- **Players & Agents**: Insights into what contributes to higher earnings could help players negotiate better contracts.  
- **Teams & Front Offices**: A better understanding of salary allocation strategies could help optimize roster construction.  
- **Fans & Analysts**: An objective look at whether contracts are justified based on performance and influence.  
- **Sponsorship & Marketing Firms**: Companies could use findings to assess which players provide the best return on investment for endorsement deals.  

## Ethical Implications  
This analysis could challenge assumptions about how NBA salaries are determined, revealing potential biases in contract negotiations. If off-court factors (e.g., marketability, social media following) are stronger predictors than performance, it may raise ethical concerns about merit-based pay versus commercial appeal. Additionally, disparities in salaries across positions, race, or experience level could emerge, requiring careful interpretation to avoid misleading conclusions. Ensuring transparency in methodology and acknowledging external influences (e.g., salary cap rules, team financial constraints) will be crucial in maintaining fairness and neutrality in the analysis.  
