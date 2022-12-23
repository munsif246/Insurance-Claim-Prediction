# Deployed Mobile app


https://user-images.githubusercontent.com/83495853/205485015-525a5538-8bdd-4c00-a7f2-c5005e0bba5b.mp4

# EDA
### Analysis on response variable

![pic1](https://user-images.githubusercontent.com/83495853/209277900-7807eb24-71c2-49b3-9b3e-8fc238522f43.png)
Here the response variable indicates whether the customer has claimed or not his/her loan. According to the pie chart around 31% of customers has claimed their loan While 68% of customers has not claimed. Claim has an unbalanced distribution. So, it would expect a large majority of the customers not to claim. This is important to make sure that modeling, as skewness could lead to a lot of false negatives.

## Analysis on quantitative variables
![pic22](https://user-images.githubusercontent.com/83495853/209278014-c80db3bf-64fd-494e-b29c-e6722fc372ea.png)
As shown in the above plots credit score variable and annual mileage variables are normally distributed. Also, we can clearly see that in the given data set most of the clients have zero speeding violations, zero acts of driving a vehicle while affected by alcohol or drugs and zero past accidents.

## Relationships between response variable and predictor variables
### 1.	Gender and the claiming
![pc34](https://user-images.githubusercontent.com/83495853/209278180-955ef5d7-696e-4807-8d11-20806d631486.png)
As you can see in this figure male clients tend to claim more than female clients. But there is no huge difference between the 2 percentages.

### 2.	Years of driving experience and claiming
![sjks](https://user-images.githubusercontent.com/83495853/209278363-d21d62f3-5f24-4cf5-8132-fe619da95cc8.png)

In this percentage bar plot, we can clearly see that years of driving experience is very less those who claimed the insurance. On the other hand there is very less chance of claiming insurance who have more than 30 years of experience in driving. In the given data set it is 0.6%.

### 3.	Age range and the claiming

![image](https://user-images.githubusercontent.com/83495853/209278538-bcff05c5-0389-48e4-b1ab-3f1f3dab38e8.png)

Among the claimed customers 46% of them are in the age range between 16-25. It is all known fact that younger people tend to face vehicle accidents more than the elderly people.

### 4.	Credit score and the claiming
 ![image](https://user-images.githubusercontent.com/83495853/209278687-4bb7c648-5c1d-416d-b404-1d34a62a7225.png)
 
As the above box plot shows, the mean credit score of the non-claimed customers is higher than the mean credit score of the claimed customers.

### 5.	Income vs credit score
![image](https://user-images.githubusercontent.com/83495853/209278807-c532d6e2-6f59-4ba3-a21a-9423564cd46f.png)

The mean credit score of upper-class income category is higher when compared to the other income categories. Also, the mean credit score of poverty customers is low. 

### Correlation heat map among quantitative variables
![image](https://user-images.githubusercontent.com/83495853/209278885-d4a2afd7-21c6-4b51-a5d2-166d9a051b71.png)

The number of past accidents and the number of speeding violations are slightly correlated. Also, the number of acts of driving a vehicle while affected by alcohol or drugs and number of speed violations are slightly correlated. The other quantitative variables are not that much correlated. 

### Spearman rank correlation among quantitative and categorical variable 
![image](https://user-images.githubusercontent.com/83495853/209278947-429ad64d-21bf-4316-994a-3f2439432da3.png)

As the heat map shows there are not any high correlations among quantitative and categorical variables. 

## Important results of the advanced analysis

### Feature selection 
![image](https://user-images.githubusercontent.com/83495853/209279018-fadc89a5-82e2-44a1-8086-bd94de5a93bb.png)

The plot above shows how useful or valuable each feature was in the construction of the XGBoost trees within the model. The more an attribute is used to make key decisions with decision trees, the higher its relative importance. From the plot we can see that the variables like CREDIT_SCORE, DRIVING_EXPERIENCE, AGE and ANNUAL_MILEAGE has been the important features in determining the XGBoost trees. Features like DUIS, RACE and VEHICLE_TYPE doesn’t seem to have a big impact on the target variable.


## Model Building
<table>
  <thead>
    <tr>
      <th>Model </th>
      <th>Accuracy </th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>Logistic regression </td>
      <td>0.8412</td>
    </tr>
    <tr>
      <td>Naive Bayes </td>
      <td>0.7670</td>
    </tr>
    <tr>
      <td>KNN</td>
      <td>0.8431</td>
    </tr>
    <tr>
      <td>Decision Tree </td>
      <td>0.8329</td>
    </tr>
    <tr>
      <td>Random Forest </td>
      <td>0.8791</td>
    </tr>
    <tr>
      <td>XGBoost </td>
      <td>0.8853</td>
    </tr>
  </tbody>
</table>

### K-Fold cross validation

<table>
  <thead>
    <tr>
      <th>Model </th>
      <th>Accuracy </th>
      <th>Cross-Validation accuracy</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>Logistic regression </td>
      <td>0.83518, 0.8234, 0.83463, 0.83685, 0.83240</td>
      <td>0.839 +/- 0.008</td>
    </tr>
    <tr>
      <td>Decision Tree </td>
      <td>0.83296, 0.82293, 0.83574, 0.83240, 0.82962</td>
      <td>0.831 +/- 0.004</td>
    </tr>
    <tr>
      <td>Random Forest </td>
      <td>0.87806, 0.87138, 0.87472, 0.87527, 0.88307</td>
      <td>0.877 +/- 0.004</td>
    </tr>
    <tr>
      <td>XGBoost </td>
      <td>0.88307, 0.86024, 0.86581, 0.86971, 0.87750</td>
      <td>0.871 +/- 0.008</td>
    </tr>
  </tbody>
</table>

## Hyperparameter tuning

Choosing a set of optimal hyperparameters for a learning algorithm helps us to get the maximum yield of that algorithm. Therefore, we chose to further improve on XGBoost, Decision Tree and Random Forest classification models by performing Grid Search. 
The following are the optimal parameters that we obtained by applying randomized grid search to XGBoost, Decision Tree, and Random Forest classification models. 
![image](https://user-images.githubusercontent.com/83495853/209281615-7a3c9bf1-c14c-49c7-9ac4-23a277ce97a9.png)
![image](https://user-images.githubusercontent.com/83495853/209281636-b6dc3f06-33d6-404f-bbaf-55728d31675f.png)
![image](https://user-images.githubusercontent.com/83495853/209281684-8b788da6-3a12-4ccf-9908-448b498a72f7.png)
