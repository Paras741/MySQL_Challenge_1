-- 1. Extract information on pet names and owner names side by side
SELECT *
FROM pets p 
JOIN owners o 
ON p.OwnerID = o.OwnerID;

-- 2. Find out which pets from this clinic had procedures performed
SELECT Name, Kind
FROM pets p
JOIN procedureshistory ph
ON p.Petid = ph.PetID;

-- 3. Match up all procedures performed to their description
SELECT *
FROM proceduresdetails pd
JOIN procedureshistory ph
ON pd.ProcedureSubCode = ph.ProcedureSubCode;

-- 4. Same as above but only for pets from clinic in the question
SELECT Name, kind
FROM proceduresdetails pd
JOIN procedureshistory ph
ON pd.ProcedureSubCode = ph.ProcedureSubCode
JOIN pets p
ON p.Petid = ph.PetID;

-- 5.Extract a table of individual costs (procedure prices) incurred by owners of pets from the clinic in question 
-- ( this table should have owner and procedure price side by side)
SELECT o.Name, pd.Price
FROM proceduresdetails pd
JOIN procedureshistory ph
ON pd.ProcedureSubCode = ph.ProcedureSubCode
JOIN pets p
ON p.Petid = ph.PetID
JOIN owners o 
ON o.OwnerID = p.OwnerID;


