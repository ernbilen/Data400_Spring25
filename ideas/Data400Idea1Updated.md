## Idea #1:

**Research question:** Do historically racist housing policies have an impact on modern-day home values in Carlisle, Pennsylvania?

**Data source(s):**

1.  Cumberland County GIS provides parcel-level data on properties in the county, including land value, home value, property taxes collected, year built, and name of owner.

2.  During the research process for my senior thesis in History, I have brought together several historical data sets linked to racial housing discrimination in Carlisle.

    a)  The first is a list of households headed by Black individuals from the 1900 census, including number of people in the household, ward number, and address.

    b)  The second is a collection of a dozen property development documents in the Carlisle area that include racial restrictions for ownership.

I plan to bring these disparate data sources together, using covenant status and Black ownership in 1900 as predictive variables for present-day home value.

**Models:**

1.  Least-squares regression - a least-squares regression model will be useful to estimate the impacts of Black ownership and racial covenants on present-day values.

    a)  In the case of home values, there are many complex relationships between confounding variables that might be related to home values. One way to address this issue is to use geographic or socioeconomic controls within a least-squares model. For example, the ward in which the home was built might be used as a control.

2.  Random forest regression - if the relationship between covenants/Black ownership and home values is non-linear or very complex, a random forest regression model will help unravel those nuances. It also provides feature importance scores, which will allow me to understand the impacts of the variables relative to each other.

**Impact on stakeholders**: This is a truly consequential issue. Colin Gordon, an historian at the University of Iowa called racial covenants the "original sin" of segregation in America, and largely blames them for today's large racial wealth gap. At a time when millions of white Americans were building generational wealth for themselves and their families by purchasing homes in prosperous neighborhoods, African Americans and other racial minorities were deliberately excluded. Over several generations, this opportunity gap widened into hundreds of thousands of dollars of wealth out of the reach of Black families.

There are several possible outcomes of this project. If I find that coverage by racial covenants are correlated with increased modern property values - or that Black ownership in 1900 was related to lower values - it raises major questions about wealth inequality in Carlisle. In the case of Evanston, Illinois, a progressive suburb of Chicago, evidence of discrimination against African Americans living in the town in the early twentieth century led to \$10 million in reparations to the descendants of Black residents.

**Ethical implications:** Studies of racial discrimination, especially quantitative ones, always face certain ethical dilemmas. It is impossible to distill decades of poor treatment, from legal discrimination to outright violence, into a mathematical model. Any attempt to do so is in poor form, and disrespects the legacy of those who fought for equality and civil rights in their communities. It is key, then, to define the limitations of the project and its aims. in this case, the goal is to estimate the impacts of two variables linked to racial housing discrimination to modern-day home values. The limitations are many, but in particular stem from a limited cross-sectional data set and an incomplete record of racial covenants in Carlisle.
