
# In the Black: An Exploration into Gambling Revenue, Taxes, and Economic Impact
![image](premium_photo-1698525809613-c6eb1c25bc0f.jpeg)

# Liam Riener and Kieran Santos
# Dickinson College Data Analytics

## 📑 Table of Contents

- [Introduction](#-introduction)
- [Data Collection](#-data-collection)
- [Data Analysis](#-data-analysis)
  - [Key Observations](#key-observations)
  - [Correlation Findings](#correlation-findings)
- [Modeling the Future](#-modeling-the-future)
  - [Model Architecture](#model-architecture)
- [Insights & Policy Recommendations](#-insights--policy-recommendations)
- [Societal Implications](#-societal-implications)
- [Future Work](#-future-work)
- [Works Cited](#-works-cited)

---

## 📘 Introduction

Large-scale American commercial gambling began in Las Vegas, Nevada in 1931. Gambling has long been linked to data science as operators try to make money while providing the illusion of equal chance while gamblers try to beat the house and win big.  
In 2018, the Supreme Court struck down a set of gambling laws, allowing states to legalize sports gambling. 12 of the 36 states with legal commercial gaming operations started in 2018 or later. Commercial gambling operations across the US have since scrambled to maximize profit while governments tax this expanding industry to fund public goods and services. 
This project finds correlations and insights in data on gambling legalization, tax rates, revenue, and total GDP to inform policymakers on the impacts of various tax rates and legalization in different economic environments to see how states can tax the industry without losing business. We also model the future of American commercial gambling.
GDP and gambling revenue both increased dramatically between 2014 and 2023. Within those trends, tax rates, year of legalization, and Gross Gambling Revenue as a percentage of GDP are all very loosely correlated with each other, although the gambling industry is relatively larger in states with smaller economies than in states with larger economies. Nevada was established as an outlier with the earliest legalization by 45 years and an especially gambling-centric economy. 
Our model projected three alternate futures. One, a linear model, projected slow, but stable growth through 2030. Another, the log-linear model, was somewhat linear with a logarithmic component, projecting accelerated growth in line with the overall trend of state legalization and revenue growth since 2014. Our final quadratic model projected exponential growth based on the slew of legalization and revenue following the 2018 SCOTUS decision. In this model, the projected 2030 nationwide gross gambling revenue is triple that of 2014.


---

## 📊 Data Collection

- **GDP Data**: U.S. Bureau of Economic Analysis (2016–2025), data from 2014-23
- **Gambling Data**: American Gaming Association “State of the States” reports (2015–2024), data from 2014-23

GDP data was taken from yearly reports from the US Bureau of Economic Analysis. Gambling revenue, tax, and legalization data was taken from yearly “State of the States” reports from the American gaming association. These yearly reports were combined into their two respective datasets before being merged together on the state and year of the data to create one dataset with ten years (2014-2023) of data with gambling revenue, taxes, and GDP from every state where commercial gambling was legal by the year.


---

## 🔎 Data Analysis

### Key Observations

We found insights within variables and used a correlation coefficient to determine weak, strong, or neutral relationships between the variables. Gambling makes an average of 0.66% of GDP in states where commercial gambling is legal, 7% of GDP in Nevada, almost 2% of GDP in Mississippi. Nevada excluded from further data analysis and tests b/c of outlier status in legalization year and revenue. 

### Correlation Findings

Only one strong correlation between variables exists. The weakest five correlations are made roughly three times as strong with Nevada included, but one instance shouldn't have that large of an impact on correlation, and therefore is excluded.

| Variables                            | Correlation |
|-------------------------------------|-------------|
| GGR and GDP (YoY increase)          | **0.84**    |
| Tax Rate and GDP                    | 0.13        |
| Tax Rate and GGR                    | -0.10       |
| Tax Rate and Legalization Year      | 0.10        |
| Tax Rate and Year of Data           | -0.10       |
| GDP and Legalization Year           | 0.12        |
| GDP and GGR as % of GDP             | -0.19       |

---

## 🔮 Modeling the Future

### Model Architecture

Due to weak correlations between most variables, we projected gambling revenue with based on a **5% yearly GDP increase**, using:

1. **Linear Model**  
   `GGR = 5.17B + 0.0036 × GDP`

2. **Log-Linear Model**  
   `log(GGR) = 23.71 + 7.20 × 10⁻¹⁴ × GDP`

3. **Quadratic Model**  
   `GGR = 79B − 0.00929 × GDP + 5.32 × 10⁻¹⁶ × GDP²`

![image](gambleModel.jpg)


> 🔮 The quadratic model projects **tripled national gambling revenue by 2030**, compared to 2014. Continued lack of regulation, CA & TX legalize?
> The linear model projects modest growth, assumes 2018-23 legalization spree will fade and regulation will impede online gambling boom.
> The log-linear model projects a mix between the two models, projecting a continuation of accelerated growth and some caution.
> No model projects downturn in gambling. Public and government reaction to gambling revenue growth is unknown, may result in downturn.

---

## 💡 Insights & Policy Recommendations

>Tax rates don’t seem to affect revenue, meaning governments can tax the gambling industry without creating a poor business environment. The size of the state doesn’t impact legalization chances, although weak negative correlation between GDP, GGR as a % of GDP indicates smaller states are more likely to have gambling play a larger role in the economy as a whole. There is a strong correlation between GGR increase year over year and GDP increase year over year (dip in both from COVID in 2020) indicates connection between industry futures and broad economic futures.
---

## ⚖️ Societal Implications

>Public services funded by gambling raise moral questions about the source of that money. Through Legalization and as gambling becomes more accessible (especially online), may normalize gambling, especially among youth, increasing addiction risks. The tax rate not affecting revenue means industry is lucrative. It’s easy for people to become addicted, regulation is needed. Newer states can learn from early adopters like Nevada about the long-term impacts of different tax rates and regulatory models. There’s an opportunity for cross-state learning to design more sustainable, ethical policies.
---

## 🔭 Future Work

>We can expand on national level work to create a model with projections for regions within the US as well as states with legalized online gambling but no casinos. We can model other variables despite weak correlations. We can compare the U.S. model with other countries with different laws and regulations to evaluate how regulation and taxation affect gambling behavior and revenue. Finally, we can analyze user data from online platforms to understand who gambles the most, when, and how much, particularly from post-legalization of sports betting.

---

## 📚 Works Cited

- “Gross Domestic Product by State and Personal Income by State, 4th Quarter 2014–2023 and Preliminary 2015–24.” *U.S. Bureau of Economic Analysis*, 2016–2025.
- “State of the States 2015–2024: The AGA Analysis of the Commercial Casino Industry.” *American Gaming Association*, 2015–2024.
- Chat-GPT 4o was used to help with coding, formatting of text in readME file. Words and research all by Liam Riener and Kieran Santos
