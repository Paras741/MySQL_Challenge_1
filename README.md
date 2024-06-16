### MySQL_Challenge_1 Analyzing Console games
#### You can convert empty records to null records using :-
converting empty to null records
UPDATE games_date
SET Discontinued = NULL,
    Comment = NULL
WHERE Discontinued = ''
   OR Comment = '';


#### EDA 
Tasks:
1. Calculate What % of global sales were made in north america.
2. Extract a view of the console game titles ordered by platform name in Ascending order and year of release in descending order.
3. For each game title extract the first four letters of the publisher's name.
4. Display all console Platforms which were released either just before black friday or just before christmas(in any year).
5. Order the Platform by their longetivity in ascending order (i.e., the platform which was available for the longest at the bottom.
6. Demonstrate how to deal with Game_Year Column if the client wants to convert it to a different datatype.
7. Provide Recommendations How to deal with missing values

### MySQL_Challenge_2 Analyzing Vet's clinic
##### EDA
Tasks:
1. Extract information on pet names and owner names side by side
2. Find out which pets from this clinic had procedures performed
3. Match up all procedures performed to their description
4. Same as above but only for pets from clinic in the question
5. Extract a table of individual costs (procedure prices) incurred by owners of pets from the clinic in question
 ( this table should have owner and procedure price side by side)

### MySQL_Challenge_3
##### You have been hired as a data analyst for an online clothing store the company is expecting to undergo a rapid expansion in the coming months and they are not sure if the database can handle the amount of transactions that will come with increase number of customers

##### You have been tasked to investigate the current design of a database. if the design is found to be an inefficient for online transaction processsing, then you need to redesign a database

