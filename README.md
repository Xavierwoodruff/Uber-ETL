<h1>Uber KPI Dashboard (SQL + Power BI)</h1>



<h2>Description</h2>

This project utilized PostgreSQL, Power BI, and raw Uber data to answer any possible Management or Stackholder questions. 

I began by designing and building a PostgreSQL database to store and manage the dataset. Once the data was imported, I performed data cleaning by removing unnecessary columns, correcting inconsistencies, currency conversions and preparing the dataset for analysis.

Next, I wrote a SQL query using a Common Table Expression (CTE) to aggregate and extract all relevant information needed for my analysis, and I created a view to streamline the connection to Power BI.

In Power BI, I connected to the view and developed an interactive dashboard with visualizations that allowed for patterns and trends to be identified and answer Mangement or Stackholder questions. 


<h2>Answer</h2>

After reviewing the data, several concerning findings have been identified. Most notably, there is a significant ride-cancellation rate, with approximately one in four rides (25%) being cancelled. In addition, our shortfall in earnings—calculated using average ride fares—appears to be higher than expected.

Preliminary analysis suggests there may also be potential revenue leakage, as the reported figures do not align with projected earnings based on average shortfall fares multiplied by total ride volume. This discrepancy could indicate up to $30,000 in unaccounted revenue.

A more in-depth investigation is recommended to determine the root cause of these variances.



<h2>Languages and Utilities Used</h2>

- <b>PostgreSQL</b> 
- <b>Power-BI</b>
- <b>Power Query</b>

<h2>Environments Used </h2>

- <b>Windows 11</b> (24H2)

<h2>Program walk-through:</h2>

<p align="center">
Created Table: <br/>
<img src="https://imgur.com/YQFdotE.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Transformed Data Using SQL: <br/>
<img src="https://imgur.com/UhdgsR3.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Cleansed Data:  <br/>
<img src="https://imgur.com/2EJXDpF.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Created Views:  <br/>
<img src="https://imgur.com/6HBJEC5.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Connected Database to Power BI:  <br/>
<img src="https://imgur.com/p8L9Pic.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Transfrom Data Using Power Query:  <br/>
<img src="https://imgur.com/63djJph.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Completed Visuals:  <br/>
<img src="https://imgur.com/1u72ffd.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
</p>

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
