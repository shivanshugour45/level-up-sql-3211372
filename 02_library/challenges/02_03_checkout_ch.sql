-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
SELECT * From Patrons Where Email = "jvaan@wisdompets.com";
Select * From Loans Limit 1;
INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate) 
Values 
((Select BookID FROM Books Where Barcode = "2855934983"), 
(SELECT PatronID From Patrons Where Email = "jvaan@wisdompets.com"), "2022-08-25", "2022-09-08"),
((Select BookID FROM Books Where Barcode = "4043822646"), 
(SELECT PatronID From Patrons Where Email = "jvaan@wisdompets.com"), "2022-08-25", "2022-09-08");

Select * FROM Loans WHERE PatronID = (SELECT PatronID From Patrons Where Email = "jvaan@wisdompets.com") ORDER BY LoanDate DESC;