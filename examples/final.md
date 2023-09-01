# Final for College Advanced SQL Class

This project will be completed using the MySQL Workbench 8.0 CE software. Using the SQL that you have learned, complete the steps below to create the **MissouriGrills** database along with its tables, queries, views, etc. based on each of the requirements in the steps below. At the end of this document is an Answer section. You will take a snippet of your results in MySQL Workbench for \#7-47 and paste your snippet for each of those steps in the Answer section. For \#48-51, you will not execute the commands. Instead, you will type your commands in this file.

1.  Create the **MissouriGrills** database. Be sure to activate (use) this database before moving on to the next step.

2.  Create the following tables (Sales_Rep, Customer, Item, Invoice, Invoice_Line). You will choose what the field names are based on my descriptions below. For example, I may tell you to create a field for first name and you can name the field **First, RepFirst, FirstName**, **First_Name**, etc. or for the reps commission rate you could name it **Rate, RepRate, CommissionRate, Comm_Rate**, etc just to name a few. In some cases, I will tell you what the field name or property “must” be. Those will be in **BOLD**. You will use the data types that I list below as well as the maximum characters. If any box is empty, it is something that YOU need to determine what would be most appropriate.

| **Sales_Rep**         |             |         |                 |     |
|-----------------------|-------------|---------|-----------------|-----|
| Fields                | Data Type   | Length  | Notes           |     |
| **Rep_ID**            | **Char**    | **2**   | **Primary Key** |     |
| Reps first name       | **VarChar** |         |                 |     |
| Reps last name        | **VarChar** |         |                 |     |
| Address               | **VarChar** |         |                 |     |
| City                  | **VarChar** |         |                 |     |
| State                 | **Char**    |         |                 |     |
| Zip                   | **Char**    |         |                 |     |
| Phone                 | **Char**    |         |                 |     |
| Reps total commission | **Decimal** | **7,2** |                 |     |
| Commission rate       | **Decimal** | **3,2** |                 |     |

| **Customer**        |             |         |                 |     |
|---------------------|-------------|---------|-----------------|-----|
| Field name          | Data Type   | Length  | Notes           |     |
| **Cust_ID**         | **Char**    | **3**   | **Primary Key** |     |
| Customer first name | **VarChar** |         |                 |     |
| Customer last name  | **VarChar** |         |                 |     |
| Address             | **VarChar** |         |                 |     |
| City                | **VarChar** |         |                 |     |
| State               | **Char**    |         |                 |     |
| Zip                 | **Char**    |         |                 |     |
| Email               | **VarChar** | **25**  |                 |     |
| Balance due         | **Decimal** | **7,2** |                 |     |
| Credit limit        | **Decimal** | **7,2** |                 |     |
| **Rep_ID**          | **Char**    | **2**   |                 |     |

| **Item**                 |             |                         |                 |     |
|--------------------------|-------------|-------------------------|-----------------|-----|
| Field name               | Data Type   | Length                  | Notes           |     |
| **Item_ID**              | **Char**    | **4**                   | **Primary Key** |     |
| Item description or name | **VarChar** | **30**                  |                 |     |
| Amount of item on hand   | **Numeric** | (don’t have to specify) |                 |     |
| Item category            | **Char**    | **3**                   |                 |     |
| Location stored          | **Char**    | **1**                   |                 |     |
| Item price               | **Decimal** | **7,2**                 |                 |     |

| **Invoice**     |             |                         |                 |     |
|-----------------|-------------|-------------------------|-----------------|-----|
| Field name      | Data Type   | Length                  | Notes           |     |
| **Invoice_Num** | **Char**    | **5**                   | **Primary Key** |     |
| Invoice date    | **Date**    | (don’t have to specify) |                 |     |
| **Cust_ID**     | **VarChar** | **3**                   |                 |     |

| **Invoice_Line** |             |                         |                 |
|------------------|-------------|-------------------------|-----------------|
| Field name       | Data Type   | Length                  | Notes           |
| **Invoice_Num**  | **Char**    | **5**                   | **Primary Key** |
| **Item_ID**      | **Char**    | **4**                   | **Primary Key** |
| Quantity ordered | **Numeric** | (don’t have to specify) |                 |
| Quoted price     | **Decimal** | **7,2**                 |                 |

3.  

4.  Add the following values to your tables that you created in the previous step. Every box needs to have data. If the box has something in it, use that when you enter the values. If it is empty, you need to come up with the values. You do not need to type them in HERE, just in your commands when you insert the values into the tables.

| Sales_Rep |            |           |         |          |       |       |       |                  |                 |     |
|-----------|------------|-----------|---------|----------|-------|-------|-------|------------------|-----------------|-----|
| Rep_ID    | First name | Last name | Address | City     | State | Zip   | Phone | Total commission | Commission rate |     |
| 2         |            |           |         | Union    | MO    | 63084 |       | 19425.52         | 0.04            |     |
| 10        |            |           |         | Rolla    | MO    | 65401 |       | 16769.22         | 0.03            |     |
| 28        |            |           |         | Sullivan | MO    | 63080 |       | 854.64           | 0.03            |     |
| 50        |            |           |         | Cuba     | MO    | 65453 |       | 9824.01          | 0.04            |     |

| Customer |            |           |         |          |       |       |       |             |              |        |     |
|----------|------------|-----------|---------|----------|-------|-------|-------|-------------|--------------|--------|-----|
| Cust_ID  | First name | Last name | Address | City     | State | Zip   | Email | Balance due | Credit limit | Rep_ID |     |
| 101      |            |           |         | Union    | MO    | 63084 |       | 76.12       | 500.00       | 2      |     |
| 109      |            |           |         | Rolla    | MO    | 65401 |       | 64.00       | 250.00       | 10     |     |
| 115      |            |           |         | Sullivan | MO    | 63080 |       | 12.22       | 300.00       | 50     |     |
| 154      |            |           |         | Cuba     | MO    | 65453 |       | 99.87       | 500.00       | 10     |     |
| 161      |            |           |         | Union    | MO    | 63084 |       | 101.66      | 750.00       | 50     |     |
| 196      |            |           |         | Rolla    | MO    | 65401 |       | 71.38       | 250.00       | 2      |     |
| 202      |            |           |         | Sullivan | MO    | 63080 |       | 45.85       | 200.00       | 50     |     |
| 218      |            |           |         | Cuba     | MO    | 65453 |       | 49.99       | 300.00       | 10     |     |
| 222      |            |           |         | Union    | MO    | 63084 |       | 154.87      | 1000.00      | 2      |     |
| 237      |            |           |         | Rolla    | MO    | 65401 |       | 231.54      | 1000.00      | 50     |     |
| 260      |            |           |         | Sullivan | MO    | 63080 |       | 8.10        | 100.00       | 10     |     |
| 264      |            |           |         | Cuba     | MO    | 65453 |       | 187.21      | 500.00       | 28     |     |

| Item    |                             |                |          |          |        |     |
|---------|-----------------------------|----------------|----------|----------|--------|-----|
| Item_ID | Item description            | Amount on hand | Category | Location | Price  |     |
| BG01    | Blaze Gas Grill             | 12             | GRL      | B        | 249.99 |     |
| WT42    | Wifi Thermometer            | 10             | ACC      | B        | 49.99  |     |
| SL34    | Spatula with LED Light      | 15             | ACC      | C        | 39.99  |     |
| BG10    | Blaze Grill Cover           | 27             | COV      | B        | 34.99  |     |
| CS63    | Charcoal Grill Cleaning Set | 41             | ACC      | C        | 24.99  |     |
| CG01    | Coyote Charcoal Grill       | 12             | GRL      | C        | 399.99 |     |
| CG10    | Coyote Grill Cover          | 12             | COV      | A        | 34.99  |     |
| GL41    | Grill Light                 | 24             | ACC      | C        | 26.99  |     |
| LT79    | Laser Thermometer           | 14             | ACC      | A        | 49.99  |     |
| CG81    | Charbroil Gridle Grill      | 23             | GRL      | B        | 299.99 |     |
| PT25    | 20lb Propane Tank           | 32             | ACC      | A        | 34.99  |     |
| CG31    | Camping Grill               | 5              | GRL      | C        | 99.99  |     |
| GT20    | Travel Grilling Tools       | 7              | ACC      | B        | 14.99  |     |
| PT50    | 1lb Travel Propane Tank     | 34             | ACC      | A        | 4.99   |     |

| Invoice     |             |         |     |
|-------------|-------------|---------|-----|
| Invoice_Num | Invoce date | Cust_ID |     |
| 11001       | 2020-10-1   | 101     |     |
| 11002       | 2020-10-1   | 222     |     |
| 11003       | 2020-10-4   | 115     |     |
| 11004       | 2020-10-4   | 154     |     |
| 11005       | 2020-10-5   | 264     |     |
| 11006       | 2020-10-8   | 109     |     |
| 11007       | 2020-10-9   | 202     |     |
| 11008       | 2020-10-12  | 218     |     |

**NOTE**: You will need to use the single quotes (‘) around the date values when you type them.

| Invoice_Line |         |                  |              |     |
|--------------|---------|------------------|--------------|-----|
| Invoice_Num  | Item_ID | Quantity ordered | Quoted price |     |
| 11001        | GL41    | 2                | 26.99        |     |
| 11002        | CG01    | 1                | 399.99       |     |
| 11002        | CG10    | 1                | 34.99        |     |
| 11003        | LT79    | 3                | 49.99        |     |
| 11004        | BG01    | 1                | 249.99       |     |
| 11005        | CG81    | 1                | 299.99       |     |
| 11005        | PT25    | 2                | 34.99        |     |
| 11005        | CS63    | 1                | 24.99        |     |
| 11006        | CG31    | 4                | 99.99        |     |
| 11006        | GT20    | 5                | 14.99        |     |
| 11007        | PT50    | 8                | 4.99         |     |
| 11008        | GL41    | 1                | 26.99        |     |

5.  

<!-- -->

4.  Confirm that all of your values that you entered match the data in the tables above. This is IMPORTANT so that your future steps will be correct!

5.  Create a table named **Grills**. It should have the following fields:

    1.  Item_Num, data type Char, length 4, and primary key

    2.  Brand, data type VarChar, length 15

    3.  Type, data type VarChar, length 10

6.  Add the following values to the **Grills** table

    1.  CG01, Coyote, Charcoal

    2.  BG01, Blaze, Gas

At the end of this document you will find an **Answer Section**. For the remaining steps, you will need to take a snippet of your **Results** and paste them in the table in the column just to the right of the appropriate number. If the list is too long to show all the results (for example, if you can only see 11 fields and there are 20) then just take a snippet of the portion that you can see. You do NOT need to scroll down to take another snippet.

7.  Run the **SELECT \* FROM Grills;** command to verify that the table and values are correct.

8.  Change the maximum characters of the email field in the **Customer** table to 35. Confirm the changes have been made by running the EXEC SP_COLUMNS CUSTOMER; command. You do NOT need to snip the entire results. Just enough to show me the email field change.

9.  Delete the **Grills** table. Confirm that it has been deleted.

10. List the first and last name of each sales rep that lives in Rolla.

11. List the customer ID, first name, last name, balance due, and rep ID of every customer. Sort by descending order by balance due.

12. List the item ID, description, and amount on hand of each item.

13. List the complete invoices table (all rows and columns).

14. List the invoice number and date for each order placed by one customer of your choosing (be sure they have placed an order).

15. List the ID, first name, last name, and address for every customer that lives in the City of your choosing (make sure it is one from your table). Use the IN operator in your command.

16. List the description and amount on hand of every item that has less than 15 on hand.

17. List the item description for every item that has the category Grill (GRL).

18. List the item description for every item that has 15 or less on hand. Sort in ascending order by number on hand.

19. List the item description and price for every item that has the category Accessory (ACC) and sort it in descending order by the item price.

20. How many sales reps earn a commission rate of 0.04?

21. How many customers live in each city? Be sure to list and group by the city. You can count by any of the other fields.

22. How many of each item are located at location A?

23. List the item ID and description of each item that contains the word “Cover” in the item description field.

24. List the invoice number and a calculated field that multiplies the quantity ordered by the quoted price (all from the Invoice_Line table). Use the column name Total_Price for the calculated field. Sort by the calculated field.

25. List the different categories of items. List each category only ONCE.

26. List the price of the most expensive item.

27. List the item description and amount on hand of every product in location C. Sort by the amount on hand in ascending order.

28. List the item description and the price of every item that has a price between \$30 and \$100.

29. List the invoice number, invoice date, customer id, customer first name, and customer last name for all orders placed after 2020-10-6. Use an alias for the table names

30. List the customer first name, last name, email address, balance, rep first name, and rep last name of every customer who’s balance due is more than \$100.

31. List the invoice number, invoice date, and customer last name for each customer that has an invoice.

32. List the first name and last name of each customer that uses rep 10.

33. List the customer ID, customer address, customer city, customer state, and customer zip for all customers in zip code 65401. Use the EXISTS operator in your query.

34. List the customer ID and customer last name of each customer that has the zip code of 63084 <u>or</u> has a credit limit of \$500.

35. List the customer ID and customer last name of each customer that has the zip code of 63084 <u>and</u> has a credit limit of \$500.

36. List the customer first name and customer last name of all customers that used rep 50. Sort in ascending order by customer last name.

37. Create the **Grill** table again, but this time use the following structure. NOTE: The field names should match what you used in the **Item** table:

    1.  Item_ID, data type Char, length 4, Primary Key

    2.  Item description, data type VarChar, length 30

    3.  Amount on hand, data type Numeric, no length to declare

    4.  Item price, data type decimal, length 7,2

Confirm that the table has been created.

38. Insert into the **Grill** table the item ID, item description, amount on hand, and item price from the **Item** table of each item that has the category Grill (GRL). Confirm that the data has been inserted into the table.

39. In the **Grill** table, change the description of item number CG01 to Coyote Pellet Grill. Confirm the change has been made.

40. In the **Grill** table, discount the price of each item by 5% (hint: multiple the price by .95). Confirm the prices have been updated.

41. Insert a new grill into the **Grill** table. The Item_ID is WG99, item description is Weber Combo Grill, amount on hand is 8, and item price is 499.99. Confirm the row has been added.

42. Delete the item with Item_ID CG81 from the **Grill** table. Confirm the row has been deleted.

43. Change the amount on hand of the Item_ID of CG31 to 15 in the **Grill** table. Confirm the change has been made.

44. Delete the **Grill** table from the database. Confirm that it has been deleted.

45. Create a view named **LocationB_Items** that consists of the Item_ID, item description, amount on hand, category, and item price of each item that has the location of B. Confirm that the view has been created.

46. Write and execute the command to retrieve the item description, amount on hand, and category of all items with the category Accessory (ACC) from the **LocationB_Items** view.

47. Write in the answer key below the query that the database would actually execute to match the previous question. Hint: you will not use the View. Your results match the results from the previous question.

In the answer section below, **type** (but do not execute on SQL Server) the commands to grant the following privileges.

48. Allow user Stein to retrieve data from the Item table.

49. Allow users Tien and Hernandez to add new customers and invoices to the database.

50. Allow user Porter to change the commission rate for any sales rep.

51. Revoke all privileges from user Young.
