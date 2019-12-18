# mysql_activities

Before executing mysql commands, we need to install first xampp for web server.


HOW TO CREATE A TABLE: 

1. Create first your DATABASE 
2. Go to your created database and click SQL.
3. Use this operation TO CREATE your tables: 

````
CREATE TABLE IF NOT EXISTS `your_db_name`(// insert statements);
````

4. Populate your tables using the `INSERT` operation

````
INSERT INTO `customers`(`custID`, `custFname`, `custLname`, `custCountry`) VALUES ([value-1],[value-2],[value-3],[value-4])
````

5. Delete your tables using the `DELETE` operation

````
DELETE FROM `your_db_name` WHERE 0
````

6. Retrieve your data using the SELECT operation
````
  SELECT `attribute_name`, `attribute_name` WHERE //your condition here
  
  or
  
  SELECT * //means getting all rows
  
````

NOTE: You can perform your MYSQL statements in localhost/phpmyadmin. Just click SQL on the menu bar.
Instructions:

In this repo, you can find a `.txt` file named SQL Questions, in there you can find 2 activities that you can practice on. Also uploaded sample sql containing a table for one of the items in the activity. 
