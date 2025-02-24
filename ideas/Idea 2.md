# IDEA 2
## Research Question  
How do major geopolitical events, elections, or sporting events (e.g., Super Bowl, Olympics) impact stock market volatility and investor sentiment?  

## Data Collection  

### Stock Market Data  
- **Stock Prices & Indices:** S&P 500, Dow Jones, NASDAQ, and sector-specific indices (Yahoo Finance). 
- **Volatility Measures:** VIX (CBOE Volatility Index) as a measure of market uncertainty.  
- **Historical Stock Returns:** Event-related stock price fluctuations.  

### Event Data  
- **Political Events:** U.S. presidential elections, Brexit, major policy announcements, wars, trade agreements.  
- **Sporting Events:** Super Bowl, FIFA World Cup, Olympics, UEFA Champions League final.  
- **Unexpected Crises:** COVID-19, financial crashes, or natural disasters.  

### Sentiment Data  
- **News & Media Sentiment:** Scrape financial news (CNBC, Bloomberg, WSJ) and analyze headlines using sentiment analysis (Natural Language Processing).  
- **Social Media Sentiment:** Scrape Twitter, Reddit, and investor forums (e.g., r/wallstreetbets) to gauge real-time sentiment.  

## Data Preprocessing  
- Align event dates with stock price movements before, during, and after events.  
- Convert textual sentiment (news, social media) into numerical scores.  
- Normalize stock price data to remove seasonal trends and unrelated market movements.  

## Methodology  

### 1. Event Study Analysis  
- Measure **Abnormal Returns (AR)** and **Cumulative Abnormal Returns (CAR)** around event dates.  
- Compare stock returns during event windows (pre-event, event-day, post-event) to expected returns.  

### 2. Volatility Analysis  
- Measure volatility spikes.  
- Compare volatility for event periods vs. non-event periods.  

### 3. Sentiment Analysis  
- Use NLP techniques (e.g., VADER or BERT models) to score news headlines and social media sentiment.  
- Correlate sentiment shifts with stock price movements.  


## Implications for Stakeholders  
- **For Investors:** Helps investors hedge risks associated with major global events.  
- **For Policymakers:** Provides insights into how economic policies influence markets.  
- **For Financial Analysts:** Guides trading strategies based on historical event-driven market behavior.  
