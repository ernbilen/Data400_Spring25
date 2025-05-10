# DATA 400 - Ashley Kim
### Mini Project #2
##### Research Question: How Does Payroll Affect Team Performance in Major League Baseball?


It started with a question I had: “Do richer teams (that can pay for more "valuable players") perform better?” Unlike other sports and leagues, Major League Baseball (MLB) does not have a salary cap, meaning teams can spend as much as their budget allows when building their rosters. Given the absence of a salary cap in MLB, this research investigates whether higher payrolls are associated with improved team performance, as measured by win percentage. This project aims to explore the relationship between team payroll and performance in MLB over the past decade (2014–2024). If a relationship is observed, the findings may have various implications for stakeholders. Team owners and executives might consider how payroll investments are linked to team performance when making financial decisions related to player acquisitions. For players and agents, understanding the potential connection between payroll and team success could influence how they approach contract negotiations and value players' contributions. Additionally, if significant disparities in payroll exist between teams, this could raise discussions about competitive fairness and its impact on the overall league structure.


### Data Source
I will use team payroll data for MLB teams over the past 10 years (2014–2024) from [Spotrac]. The data encompasses player salaries, bonuses, and incentives, though it is not directly downloadable. To retrieve it, I will use BeautifulSoup to scrape data from Spotrac. For performance metrics, I will download team statistics data from [Baseball-Reference] for the same period. Key variables will include wins, Runs Scored per Game (RS), Runs Allowed per Game (RA), and On-base Plus Slugging (OPS). After gathering both payroll and performance data, I will structure it into a panel format, which will combine cross-sectional data for each team over multiple years.


### Model Specification
This project will use a panel regression model to analyze the relationship between team payroll and performance in MLB. The dependent variable will be team win percentage, calculated as the ratio of wins to games played. The primary independent variable will be team payroll, including salaries, bonuses, and player incentives. Control variables will include Runs Scored per Game (RS) and Runs Allowed per Game (RA) to account for offensive and defensive performance, as well as On-base Plus Slugging (OPS) to capture overall offensive strength. The model will also include the lagged win percentage to control for carryover effects from the previous season. To ensure the reliability of the results, I will check for potential multicollinearity to minimize distortion of coefficient estimates due to high correlations among the predictors. This model is well-suited for identifying patterns in the relationship between payroll and performance while adjusting for key performance metrics, though it does not establish causal relationships.


[//]: #
 [spotrac]:<https://www.spotrac.com/mlb/payroll/_/year/2024/sort/cap_total2>
 [baseball-reference]: <https://www.baseball-reference.com/leagues/majors/2024.shtml>