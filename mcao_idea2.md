Project Title: Optimize Meals and Profits at Dickinson Farmworks 

Below is the proposal for John Park and I's DATA 300 project. I am submitting this as a backup project plan with the following revisions:

More parameters (temp, season, break down soups sold into 15 min intervals)
One hot encoding instead of label encoding
Perform tree and regression models again
Visualize the data using PowerBI/Tableau

Project Description 

Farmworks is a farm-to-table store that prepares meals from fresh ingredients supplied by the Dickinson College Farm. This business serves Dickinson students and faculty and the greater Carlisle area to aim zero-waste emission within the store and strengthen the community. A recent conversation with Jenn Halpin, Director of Dickinson College Farm, suggested that Farmworks is reaching capacity in the number of meals they can produce each day and are therefore running out of food before the business closes. Our goal is to optimize the number of soups and salads the head chef should make, in order to maximize their profits (of each business day 11a to 2p). To pursue this project, we will collect historical data on menu items, amount of food produced and served, cost to produce each meal, timestamp, and potentially weather data to inform the model. Additionally, we will consider the number of workers to scale its influence on the production side.  

We plan to apply linear regression and decision trees models to identify significant various factors and generate how many more meals need to be produced. The model will find a balance between the needs of the community and maximize the business profits. We are hopeful that the outputs of the project will inform Farmwork's’ discussion with college leadership to expand budget for another chef and attract more customers by consistently satisfying the demand.  
 

Dataset 

We are in the process of collecting data from the Farmworks’ business system (Square) that contains time, date, # of meals served, what they bought (salad, soup, ½ soup, ½ salad or empanadas). We will also receive data on the base estimate cost of each soup and information related to menu rotations and food preparation. We may also choose to include weather data and see how that feature informs our model.  

For specific features, we plan to include the historical menu data (categorical), number of meals sold (numerical, continuous), special menu items (e.g. empanadas, breakfast, etc.) (categorical), day of the week (categorical), number of servings made (categorical), # of servings sold per hour and estimate cost (numerical), and potentially number of workers/total labor hours (numerical) and weather data (numerical (temp), categorical (cloudy, raining, etc.)).  


Evaluation 

To evaluate our model’s performance in predicting optimal meal production, we will use regression metrics, including Mean Absolute Error (MAE), Root Mean Squared Error (RMSE), and R-squared values (R^2). The MAE and RMSE metrics will assist in identifying and adjusting significant prediction gaps. R-squared will determine our model’s effectiveness in capturing key demand features. If it leads to overfitting, we may switch to the adjusted R-squared metric. These metrics will assess the model’s accuracy in predicting the meal quantities, classified by each menu cycle, and effectiveness in meeting the equilibrium point of the meal’s input cost and revenue. After the initial evaluation, we will tune hyperparameters and refine features, especially weather and labor productivity, to improve the model’s performance. The model’s sensitivity to weather and seasonal menu changes will be ensured to maintain a consistent performance.  

After collecting and performing initial tests, we may potentially increase the features and experiment with decision trees.  
