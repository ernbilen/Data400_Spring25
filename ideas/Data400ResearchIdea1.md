# Michael Freda

# Idea 1: Social Media Sentiment Impacts on Cryptocurrency Price Movements

## Research Question
- Can social media sentiment help to predict the movement of the cryptocurrency market?

Social media has never been more influencial on our lives than it is today, with many of our decisions, including economic ones, being motivated by what we see online.  This project would analyze the impacts of posts by distinguished individuals and news organizations on the cryptocurrency market through the various coins available and what each one relates to.

Cryptocurrency is a growing market in recent years by becoming a global financial industry where coins are formally adopted as proper currency by numerous countries around the world.  Crypto helps fight against issues such as inflation and banking issues due to its fixed supply, decentralizied networks, protection from currency devaluation, and other issues that emerge in government-based banks around the world.

## Tractable Data

Cryptocurrency prices & market data can be compared before & after importnat crypto-related posts by major outlets on social media.  Some social medias that can be used would be Twitter, Reddit, and traditional news outlets online.  Some macroeconomic data can be also be analyzed based on social media reaciton to implemented governmental policies.

## Data Retrieval

APIs & Web Scraping can be utilized to collect our data on the various sites needed.  We can use Twitter API or a similiar product to retrieve crypto-related tweets, PRAW to scrape Reddit posts, CoinGecko API to analyze historical and real-time crypto price data, and FRED (Federal Reserve Economic Data) for data on inflation, interest rates, and stock market indices for correlation analysis.

## Models

The project will use various models, but will primarily focus on a LSTM model that allows for time-series forecasting and display sequential dependencies between past price movements, trading volumes, and sentiment scores, which works well for short-term price prediction using real-time sentiment data.  We will also use logistic regression, along with clustering and general visualization to represent varying crypto market performances based on sentiment analysis scores from social media posts from esteemed accounts.

## Implications for Stakeholders

This project will identify sentiment-driven price movements for improved trading strategies to maximize profit for investors.  This will in short assess whether or not social media reactions relate to price pumps or crashes in the crypto market.

In addition, the project will aim to detect market manipulation risks to prevent pump-and-dump schemes fueled online to trick investors into losing their money.

## Ethical Implications

The project's data will be collected ethically by following proper API policies and preventing potential biases in the sentiment analysis models utilized for the final result.

The project will also work to identify bot-driven sentiment manipulation on social media and whether or not social media influences herd behavior in crypto markets through sudden mass buy & sell waves based off social media posts.
