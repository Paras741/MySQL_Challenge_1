# MySQL_Challenge_1
# You can convert empty records to null records using :-
converting empty to null records
UPDATE games_date
SET Discontinued = NULL,
    Comment = NULL
WHERE Discontinued = ''
   OR Comment = '';


# EDA 
Tasks:
1. Calculate What % of global sales were made in north america.
2. Extract a view of the console game titles ordered by platform name in Ascending order and year of release in descending order.
3. For each game title extract the first four letters of the publisher's name.
4. Display all console Platforms which were released either just before black friday or just before christmas(in any year).
5. Order the Platform by their longetivity in ascending order (i.e., the platform which was available for the longest at the bottom.
6. Demonstrate how to deal with Game_Year Column if the client wants to convert it to a different datatype.
7. Provide Recommendations How to deal with missing values
