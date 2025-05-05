# Predicting the "Perfect" Airbnb Listing
##### By Pham Duy Anh Vu, Hannie Pham

---

## Introduction

When thinking of an ideal Airbnb listing, we usually think about compelling photography, clear and concise descriptions, responsive hosting, and a curated selection of amenities that cater to guest needs. It sets transparent expectations around space, price, and house rules, while highlighting unique features—be it a cozy reading nook, a stunning city view, or thoughtful local touches—that resonate with travelers and encourage bookings.

This study aims to quantitatively assess these elements and uncover key factors behind high-performing Airbnb listings, defined as those with guest ratings above 4.5, offering practical guidance for hosts, guests, and platform designers aiming to enhance listing quality and user experience.

---

## Data & Methods

- **Source:** [Airbnb.com](https://www.airbnb.com/) (via [`airbnb_api`](https://apify.com/tri_angle/airbnb-scraper))
- **Preprocessing:** 
  - We first scraped our data using the `airbnb api` which returned the raw data onto a csv
  - We then used the `pandas` Python library to clean and process the listing data to prepare it for analysis
- **Visualization / Models:**
  - Used the `ydata_profiling` Python package for some preliminary analysis and visualizations
  - All visualizations were created using `matplotlib` and `seaborn`
  - We used linear regression models and Random Forest classification models for the predictive analysis

---

## Project Recreation

- **File structure:**
  - **data/** — Raw and cleaned datasets  
  - **notebooks/** — Jupyter notebooks for exploration, modeling, and analysis  

- **Recreation steps:** 
  - **Step 1:** Download or clone the project files
  - **Step 2:** Open the 'Data400 Final Project.ipynb' file, change the working directory to your current working directory
  - **Step 3:** Run the codes step-by-step to reproduce the results

---

## Results Summary

- **Listing Type and Pricing:** Boutique hotels, villas, and hotels had the highest median prices, while guesthouses and tiny houses offered more budget-friendly options with occasional high-end outliers.
- **Amenity Insights:** Listings with popular amenities like Wi-Fi, kitchen, and air conditioning tended to receive higher ratings, suggesting guest preferences significantly impact listing success.
- **Key Predictors of High Ratings:** Important features influencing listing success included number of reviews, amenities offered, superhost status, and listing type.
- **Regression Model Performance:** Linear regression and random forest models were used to predict both price and rating. The random forest model achieved better performance with higher accuracy and lower error metrics.

---

## Implications

- Understanding key drivers of high ratings can help hosts optimize listings for better guest satisfaction and higher bookings.
- Guests can use insights about pricing, property types, and common high-rated features to make more informed booking decisions aligned with their preferences and budget.
- The predictive models were able to find notable characteristics that affected ratings but remained inaccurate

---

## Future Work
- Experiment with more models and tuning methods to generate more accurate predictions
- Expand the analysis to include host-level data
- Possible intergration of data such as 'local crime rate' or 'hotel prices' to deepen on location-based success
