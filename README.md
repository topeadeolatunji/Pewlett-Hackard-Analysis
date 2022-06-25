# Pewlett-Hackard- Employee Database Analysis

## Overview of Analysis
The purpose of this analysis is to understand PH and its workforce who will be retiring and the need to fill their vacancy positions. Pewlett-Hackard (PH) is a large organisation with several tens of thousands of employees. As its baby boomer workforce (those born in early to mid 1950s) begins to retire at a rapid rate, PH is looking to make plans for its future. First, it must offer retirement packages to these employees and second, it needs to fill the vacant positions that will be available as a result of the mass retirement.

Bobby is a HR Analyst who has been tasked to help with understanding those employess who will be retiring and also quantify positions that needs to be filled. The employee data is available in six different .csv excel file. Booby and I will build a SQL database that will store and generate a list these employees in one database in which the information will be readily available for future use and also to help PH make informed decision about its retiring workforce.


## Results & Findings

- Initial task to understand employees retiring is to generate a table/list of employees whose birth date was between 1952 and 1955 along with the employee detail such as employee number which is a unique primary key, full name, and birth date. This information was available in the 'Employee' .csv file. Next, I gathered job titles, as well as tenure (i.e. to & from date the position was held by the employee) from the 'Titles' file. Combining the 2 files allowed us to generate the 'retiremnent_titles' table. This is the result (see image below):
![image](https://user-images.githubusercontent.com/104689265/175782631-6fca9c30-31c4-4ee8-90ca-6323e7bcfe0c.png)


## Summary & Conclusion

