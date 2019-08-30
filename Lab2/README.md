
# Types of Variables: 

### Discrete Quantitative – 

results are numbers that represent a count (“the number of …”).

Example: Number of cars owned per person, Number of people attending school 

### Continuous Quantitative – 

results are numbers that represent a measurement.

Example: Height, distance, money spent, time spent.

### Categorical – 

numbers that are not counts or measurements and anything that is not a number.

Example: gender, veteran status , Admission accpeted or not.


# Lab 2 Examples:

# 1. get data 
Data from : https://www.bls.gov/oes/tables.htm , I collected, cleaned and integrated these data into one excel sheet: https://github.com/Shanlearning/Stat201/blob/master/Lab2/education_2018.xlsx


## 1.Make a graph for a categorical variable:
Choose sheet State_and_education_for_graph1, filter for interested areas,
### In StatCrunch:
Graph->Pie Chart->With Summary
Choose education_category for Categories in, Counts in Employment, where area_name = "National" , order by value ascending
![graph1](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph1.PNG)

![graph1p](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph1p.PNG)
## 2.Make a graph for a quantitative variable:
Choose sheet industry_and_edu_for_graph23, filter for interested occupation sectors,
### In StatCrunch:
Graph->Histogram
Choose annual_mean_wage for select columns, where education_category = "Bachelor's degree", markers mean
![graph2](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph2.PNG)

![graph2p](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph2p.PNG)
## 3.Make a graph for two categorical variables:
Choose sheet industry_and_edu_for_graph23
### In StatCrunch:
Graph->Pie Chart->With Summary
Choose education_category for Categories in, Counts in Employment, where naics_title = "Coal Mining" and naics_title = "Electric Power Generation, Transmission and Distribution" , order by value ascending
![graph3t](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph3t.PNG)

![graph3tp](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph3tp.PNG)

## 4.Choose one quantitative and one categorical variable
Choose sheet Occupation_data_for_graph4, filter for interested occupation sectors

### In StatCrunch:
Graph->Chart->Columns
Choose wage in Select columns, Order by Value Descending , with vertical lines
![graph4](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph4.PNG)

![graph4p](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph4p.PNG)

### Method 2 (Totally optional!!)
Choose sheet State_and_education_for_graph23, filter for at least two interested areas,
### In StatCrunch:
Graph->Boxplot
Choose annual_mean_wage for select columns, group by education_category，markers mean
![graph3](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph3.PNG)

![graph3p](https://github.com/Shanlearning/Stat201/blob/master/Lab2/pics/graph3p.PNG)

