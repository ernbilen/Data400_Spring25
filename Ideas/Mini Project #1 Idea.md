# DATA 400 - Ashley Kim
### Mini Project #1 
##### Research Question: How Does the Location of Universities Affect Their Racial Diversity?

This project aims to explore the relationship between university location and racial diversity on both the institutional level and degree level. The focus will be on Bachelor’s degree awarded each year at institutions in the United States. This research has meaningful implications for universities, policymakers, and students. Universities can use the findings to refine recruitment and retention strategies, particularly in underrepresented areas. Policymakers can leverage insights to shape education policies that promote equitable access to higher education, ensuring diversity across institutions regardless of location. Prospective students may benefit from understanding how institutional location affects racial representation in different academic fields. If the results indicate disparities in degree attainment by race in certain geographic settings, interventions and efforts can be made to promote inclusivity. Also, this project contributes to broader societal discussions on equity in higher education by examining how geographic factors influence racial diversity. The findings could inform efforts to create more inclusive and accessible academic environments across all types of institutions.

### Data Source
I will use publicly available datasets from the [Integrated Postsecondary Education Data System] (IPEDS). This comprehensive and federally maintained source collects standardized data on postsecondary institutions across the United States. IPEDS provides annual reports on key metrics such as institutional characteristics, enrollment demographics, and degree completions, ensuring data consistency and reliability. The data retrieval process will involve downloading “Institutional Characteristics” and “Completions” datasets from IPEDS. I will focus on extracting variables such as racial demographics, bachelor’s degree awarded by major and race, geographic location of universities, locale codes, and institutional characters such as institution size and institution type. 


### Model Specification
This project will use a multivariate regression model to analyze the relationship between university location and racial diversity in degree attainment. The dependent variable will be the proportion of Bachelor's degrees awarded to different racial groups across majors and institutions. Independent variables will include locale codes to capture geographic settings, while control variables will account for institutional characteristics, such as size and type, to ensure robustness. This model is well-suited for identifying patterns and potential disparities across different regions, though it does not establish causal relationships.



[//]: #
 [integrated postsecondary education data system]: <https://nces.ed.gov/ipeds/datacenter/DataFiles.aspx?gotoReportId=7&fromIpeds=true&sid=37c646f5-c31a-4355-a887-a92d2c297362&rtid=7>