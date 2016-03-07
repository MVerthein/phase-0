## 8.4 Challenge Release 5:
<br>
1.
SELECT * FROM states;
<br>
2.
SELECT * FROM regions;
<br>
3.
SELECT state_name,population
FROM states;
<br>
4.
SELECT state_name,population
FROM states
ORDER BY population DESC;
<br>
5.
SELECT state_name
FROM states
WHERE region_id=7;
<br>
6.
SELECT state_name
FROM states
WHERE population_density>50
ORDER BY population_density ASC;
<br>
7.
SELECT state_name
FROM states
WHERE population BETWEEN 1000000 AND 1500000;
<br>
8.
SELECT state_name,region_id
FROM states
ORDER BY region_id ASC;
<br>
9.
SELECT region_name
FROM regions
WHERE region_name LIKE "#Central%";
<br>
10.
SELECT region_name,state_name
FROM regions,states
ORDER BY region_id ASC;
<br><br>

##Release 6:<br><br>

![Schema](SchemaDesign.png)
<br><br>

##Release 7:<br><br>
<b>What are databases for?</b><br>
Databases are using to store data in a more structured way like a table, to easily search and access data.<br>
<b>What is a one-to-many relationship?</b><br>
It is when two different objects share a relationship where the first object belongs to the second object. The second object also has many types of first object.<br>
<b>What is a primary key? What is a foreign key? How can you determine which is which?</b><br>
A primary key is a table column containing unique values in a relational database. On the relational database will be the same key, this is the foreign key that is referenced by the primary key. This will hold additional information based on the foreign key.<br>
<b>How can you select information out of a SQL database? What are some general guidelines for that?</b><br>
Use the SELECT command to send a query FROM the table of choice, this is return a result set in the form of a table.<br> For example: SELECT column_name FROM table_name;<br>