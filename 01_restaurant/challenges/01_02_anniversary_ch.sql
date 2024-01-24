-- Create a table in the database to store customer
-- responses to our anniversary invitation.
CREATE TABLE CustomerResponses(
    CustomerID INTEGER CONSTRAINT CustRespIDPK PRIMARY KEY,
    Invitees INTEGER 
);
-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes