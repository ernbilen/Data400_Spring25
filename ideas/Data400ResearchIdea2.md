# Michael Freda

# Idea 1: Clutch Factor Performance in the NBA

## Research Question
- What factors contribute most to a player's clutch-time potential?

In a league of professional basketball players, it is hard to separate one's self from the rest.  It is in the last moments of intense games that the best are able to truly demonstrate what puts them apart from the rest, their ability to perform in clutch-time.

There are countless statistics that are accounted for player's ability to performance in these intense plays, but what truly gives them the ability to act fearless in these times?  This project will anyalze play-by-play data to see what makes a player a clutch-time hero.

## Tractable Data

The NBA provides extenstive historical data through multiple sources such as the NBA API or Basketball-Reference, when can be utilized to provide data for player stats, team stats, play-by-play logs, shot charts, and win probabilities.  This can give an insight on what makes these clutch plays possible.

## Data Retrieval

APIs & Web Scraping can be utilized to collect our data on the sites listed above.  Using NBA API, we can get the box scores, advanced metrics, and clutch-time performances (last few minutes with a 5 or less point margin).  Basketball-Reference will be used to collect the play-by-play data using their API.

## Models

The project will attempt to use a classification model using logical regression to predict if a player will perform during these clutch-times whether it be on offense or defense.

## Implications for Stakeholders

This project will allow for Stakeholders to understand which players are more likely to perform in the most pivotal points in the game, bringing in more money for fans potentially.  It also allows them to figure out who they may want to sign in free agency, drafting, or trades.

## Ethical Implications

The project's data will be collected in an ethical manner by following proper API policies and preventing biases (towards players or teams) in the models created and used in the project.

The project will also work to break down any pre-existing biases that people have about what makes a player clutch, and take a more statistical viewpoint on what builds to these players' performances.