# Idea 1: The Economics of Presidential Elections

## Research Question
- What economic factors have historically been indicative of the outcome of presidential elections?

Election year in the USA brings about a lot of conversation, many of which are related to the economy under the current administration/party and what changes the opposition's policies would bring. This project would look at the performance of the economy under different administrations and see if, for example, one party historically has higher or lower metrics in different categories. Additionally, we can look at performance during the terms and see if any metrics predict whether or not the current party retains the presidency. 

Election indicators are a popular topic during election years. For example, Matt Krantz of *Investor's Business Daily* wrote an [article](https://www.investors.com/etfs-and-funds/sectors/sp500-86-accurate-stock-market-indicator-predicts-next-president/) about how the "incumbent party was reelected 82% of the time when the S&P 500 rose in the three-month period from July 31 to Oct. 31". As such, this analysis will include data on the performance of top index funds such as S&P 500, Nasdaq, and Dow Jones. Additionally, this study will also include public polls and surveys about general public sentiment leading up to elections. 

## Data Source
The majority of the data will be from government economic data sources such as the [Bureau of Labor Statistics (BLS)](https://www.bls.gov) and [FRED](https://fred.stlouisfed.org). These sites provide reliable data on economic factors, including index funds, in CSV format. Data will have to be aggregated into a single dataset. There might be two datasets—one with data on economic performance for each year and a second subset focusing on terms for the prediction metrics. [Wikipedia](https://en.wikipedia.org/wiki/Polling_for_United_States_presidential_elections) has data on pre-election polling results. 

## Models
The project will use a variety of models and compare performance on predicting the presidency. These will include logistic regression, tree-based methods, and a simple neural network. Likely regression and tree-based will be optimal for seeing which variables are most import since their output is very transparent although the neural net might have better performance. Additionally, clustering and general data visualization will be used to display economic performance under different parties, different eras, first-term vs. second-term presidencies, etc.

## Implications for Stakeholders
For results related to how party affiliation affects economic performance, the primary stakeholders will be U.S. citizens, policymakers, and financial analysts. Voters may gain insights into how different economic indicators have historically aligned with presidential election outcomes, helping them better understand the economic context behind campaign narratives. Financial professionals and market analysts may also find value in identifying trends that could influence investment decisions around election cycles. Sitting presidents and aspiring presidents could also get insight on what issues and areas to focus on / challenge. 

## Ethical Implications
Ethically, the results of this project must be presented with neutrality and transparency. Correlation does not imply causation, and any findings should be interpreted with caution to avoid misleading conclusions. This analysis may challenge assumptions about which party is perceived as "better" for the economy, exposing gaps between economic realities and political messaging. Additionally, the findings may contradict widely held beliefs about which party historically excels in certain economic areas. Additionally, the study should acknowledge potential biases in economic data collection, external global factors affecting economic performance, and the evolving nature of political and financial systems over time. The goal is to provide informative insights rather than prescriptive conclusions about which policies or parties are "better" for the economy.

