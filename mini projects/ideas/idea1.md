# Idea #1
### Economics Discipline - Malena Malka Goldman

**Research Question: How does the changes of inflation trends affect the price of the canasta basica nacional in Argentina**
The Canasta Básica Nacional (CBN) in Argentina refers to a set of essential goods and services used to measure poverty and indigence levels. It consists of two key components:

_Canasta Básica Alimentaria (CBA) – Basic Food Basket_
* Represents the minimum amount of food required to meet basic nutritional needs.
* A household whose income is below the CBA is considered indigent (indigencia), meaning they cannot afford even essential food items.
 
_Canasta Básica Total (CBT) – Total Basic Basket_
* Includes the CBA plus other essential expenses like housing, transportation, education, and healthcare.
* A household whose income is below the CBT is considered poor (pobreza), meaning they can afford food but not other basic necessities.

**Tractable data**
For this project, I will be utilizing official information provided by both local and international statistical entities. On the one hand, I will be using a dataset from the National Institute of Statistics and Censuses from the Argentine Republic (INDEC) that contains information regarding the price of both the CBA and CBT from April of 2016 to December of 2024. This data is collected by the national office and is official and approved by the state. I will cross-examine this data with Argentina's monthly inflation rates.

**Data retrieval**
Although it is difficult to access the data sets provided by the Federal Reserve or the International Monetary Fund, I will be accessing the Inflation rates data through the trading economics website, which replicates multiple economic indexes. The link to access the data is the following:
https://tradingeconomics.com/argentina/inflation-cpi
And the link to access the CBA data is the following:
https://www.indec.gob.ar/indec/web/Nivel4-Tema-4-43-149
My goal would be to create a unique data frame combining both pieces of information and run my analysis.

**Correct specification of the model**
I'm not entirely sure what type of analysis would be most beneficial regarding this information, I guess I would need to look at the data first before making any decisions. Initially, I would like to run a linear regression model to be able to predict what prices would both the CBA and CBT have depending on the Inflation rate that month. However, I recognize that the price of the basket keeps rising, so maybe being able to cluster specific Interest rates with the percentage change in price of the CBA or CBT could also be interesting. I am open to suggestions :)

**Implications for stakeholders**
The findings of this study have significant implications for multiple stakeholders, including policymakers, economists and social organizations. For government entities and policymakers, understanding the relationship between inflation and the Canasta Básica Alimentaria can inform targeted economic policies, such as social assistance programs and wage adjustments, to mitigate the impact of rising costs on vulnerable populations. In addition, businesses and labor unions can use these insights to advocate for fair wage policies that align with inflation trends. Additionally, financial institutions and investors can leverage this analysis to assess economic stability and forecast consumer purchasing power. 

**Ethical, legal, societal implications**
This research can enhance public awareness of inflation’s impact on basic living costs, potentially influencing social movements and public discourse. However, the responsibility extends to ensuring that the findings do not contribute to fear-mongering but instead provide constructive insights that contribute to economic stability and improved social welfare policies. From an ethical standpoint, ensuring transparency and accuracy in data handling is crucial, as misleading conclusions could influence public perception and policy decisions. Given the socio-economic sensitivity of this issue, researchers must be cautious about potential biases in data sources and analysis, ensuring that findings are presented responsibly to avoid misinterpretations that could exacerbate economic anxieties.
