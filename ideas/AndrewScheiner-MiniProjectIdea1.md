## Andrew Scheiner Mini Project Idea #1
### Topic
The topic I am choosing to research for my mini-project is the [availability of computer science education](https://advocacy.code.org/report-data/) for middle school students across the United States. One reason why I am incredibly interested in this topic because for my educational research class, I wrote a research paper on the importance of increasing block-based coding usage in middle school classrooms.
### Collecting the Data
Code.org provides a [specific resource to view raw data](https://docs.google.com/spreadsheets/d/1TJ5-BmrTbcEcDDn3RSQccbLaAQ06t1YSsNxXGeBKOM0/edit?gid=0#gid=0) they collected in the form of Google sheets. This data includes multiple datapoints surrounding access of coding education seen across the country's middle schools. The Google sheet has data for:
- Access to CS education by state
- Student participation
- Participation by gender
- Participation by race/ethnicity
- Participation by other student groups
- General K-12 student demographics
Each aspect mentioned in this list has one tab within the available Google sheet. Each tab can be converted to its on CSV file for data analysis purposes.

#### Data Source / Citation
- "Underlying data was contributed by various organizations, including the Computer Science Teachers Association (CSTA), University of Texas at Austin, the College Board, Technology Education and Literacy in Schools (TEALS), Project Lead the Way, BootUp PD, and many state education agencies." - [Code.org](https://advocacy.code.org/report-data/)
- Code.org. (2022). *Computer science access report data.* Retrieved from code.org/yourschool/accessreport.

### Exploratory Data Analysis
#### Most Recent Access Data
|       |   Percent of Schools that Provided Data |   Number of Middle School Offering CS |   Total Number of Middle School |   Percent of Middle School Offering CS |
|:------|----------------------------------------:|--------------------------------------:|--------------------------------:|---------------------------------------:|
| count |                               52        |                                52     |                           52    |                              52        |
| mean  |                                0.692091 |                               468.865 |                         1262.73 |                               0.410832 |
| std   |                                0.241461 |                              1671.11  |                         4515.21 |                               0.187131 |
| min   |                                0.143695 |                                13     |                           73    |                               0.114247 |
| 25%   |                                0.506148 |                                90.25  |                          293.75 |                               0.286079 |
| 50%   |                                0.680198 |                               208.5   |                          453    |                               0.358464 |
| 75%   |                                0.915115 |                               320.75  |                          784.5  |                               0.501176 |
| max   |                                1        |                             12202     |                        32891    |                               0.918699 |

### Model Idea
- For my project, I will most likely be generating visualizations based on data filters. I will accomplish this through one of two ways: for exploratory data analysis, I can create static graphs with data from each tab/aspect of the Google sheet, or I can create a dashboard on either Tableau or Streamlit so my audience can manually filter the middle school CS education data to see their own desired trends. However I decide to create my visuals, I should focus primarily on filterable choropleth maps since each row in my data represents a single US state.
- Additionally, I think I could use machine learning to discover patterns in the data which could be used to present findings and ideas to educators as well. I could regression models to explain the connection between access and demographics. The demographics would include state, gender, race/ethnicity, and student status. Student status includes learning disabilities and socio-economic disadvantages. Lastly, I could potentially use clustering to group states that have similar access qualities regarding middle school CS education.

### Stakeholder Implications
My stakeholders (or audience) for this project would be middle school educators and those who oversee middle school cirriculum and success. The [Code.org dashboard](https://advocacy.code.org/report-data/) for viewing CS education data only allows viewers to filter and see data for high school classrooms. This project would be a great chance to make middle school data and trends more visually visible to educators.

### Ethical Implications
The main ethical implications regarding my project are the issues with using, displaying, and analyzing educational data. Whenever working with educational data, it's crucial to ensure the raw data collected is without purposeful biases. Luckily, with my dataset, it is quantitative data where each instance corresponds to a singular US state. This removes the possibility of specific school districts, geographical areas, or educators/students being exposed for inequalities in my project. However, with the sections my data includes on gender, race/ethnicity, and other student demographics, which could have inherit but unintended biases on how CS educaton trends are distributed throughout the United States. The various organizations who contributed to the underlying data are mentioned below.