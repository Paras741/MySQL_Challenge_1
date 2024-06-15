# MySQL_Challenge_1
# You can convert empty records to null records using :-
converting empty to null records
UPDATE games_date
SET Discontinued = NULL,
    Comment = NULL
WHERE Discontinued = ''
   OR Comment = '';
