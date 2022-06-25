# Pewlett-Hackard- Employee Database Analysis

## Overview of Analysis
The purpose of this analysis is to understand PH and its workforce who will be retiring and the need to fill their vacancy positions. Pewlett-Hackard (PH) is a large organisation with several tens of thousands of employees. As its baby boomer workforce (those born in early to mid 1950s) begins to retire at a rapid rate, PH is looking to make plans for its future. First, it must offer retirement packages to these employees and second, it needs to fill the vacant positions that will be available as a result of the mass retirement.

Bobby is a HR Analyst who has been tasked to help with understanding those employess who will be retiring and also quantify positions that needs to be filled. The employee data is available in six different .csv excel file. Booby and I will build a SQL database that will store and generate a list these employees in one database in which the information will be readily available for future use and also to help PH make informed decision about its retiring workforce.


## Results & Findings

- Initial task to understand employees retiring is to generate a table/list of employees whose birth date was between 1952 and 1955 (this was a criteria used as a filter to narrow down eligible retirees) along with the employee detail such as employee number which is a unique primary key, full name, and birth date. This information was available in the 'Employee' .csv file. Next, I gathered job titles, as well as tenure (i.e. to & from date the position was held by the employee) from the 'Titles' file. Combining the 2 files allowed us to generate the 'retiremnent_titles' table. This gets the first cut of eligible retirees, however, we noticed duplications and other limitations that was prevalent. Examples of these include, duplicate employee number in the list, employees held multiple titles over the years, some employees are no longer employed at PH using the to_date as an indicator. See image below:

![image](https://user-images.githubusercontent.com/104689265/175782631-6fca9c30-31c4-4ee8-90ca-6323e7bcfe0c.png)

- Next in order to remove the issues in the 1st table, we used the DISTINCT ON () function on emp_no to remove duplicate occurrence where employees appear more than once. Next, to capture just current employees, we filtered the WHERE AND () to include current employees setting the to_date to set to '9999-01-01'. This resolved the issues found in the 1st table and called unique table. See below:

![image](https://user-images.githubusercontent.com/104689265/175783111-90eb47a7-66e9-4f67-a02f-3615330b1ed5.png)

- Next, we tallied the total counts of employees into a retiring table from the unique table created above in order to get the counts by title. This helps depict the number of unique positions that needs to be filled by titles

![image](https://user-images.githubusercontent.com/104689265/175783289-1cfa419c-7db1-4716-b672-8404cf117f65.png)

- Lastly, we generated a table of employees list who could be eligible for mentorship programme to help fill vacant positions. This included using the criteria where the employee birthdate is during 1965, who are also currently employed by PH, using columns from 3 different tables: employees, dept_emp & titles. This gave a comprehensive list called mentorship-eligibility that narrowed the employees. See the below tables:

![image](https://user-images.githubusercontent.com/104689265/175783561-0589c1ea-e917-43aa-acc6-736b4bbc7b9c.png)


## Summary & Conclusion

Based on the above findings and analysis, we can conclude the following:
  1. There are 72,459 roles / titles to be filled as the silver tsunami takes place. These roles won't be filled overnight, but incrementally and slowly.
  2. Also, there are 1,549 employees that are eligible for the mentorship programme that can help fill the positions that will be vacant. It seems like the ratio of    positions to be filled and those eligible for the mentorship programme is underwhelming at about 47 roles to 1 mentor. 

In conclusion, PH should expand its mentorship eligibility by expanding the birth year. This will ensure that there are enough mentors to help fill the vacancy as a results of employees retiring.
