/*

--Create Tables

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    email VARCHAR(40)
);

-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(25) UNIQUE
);

-- Create Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(20) UNIQUE
);

-- Create Crowdfunding table
CREATE TABLE Crowdfunding (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(30),
    blurb VARCHAR(50),
    goal INT,
    pledged INT,
    outcome INT,
    backers_count INT,
    country VARCHAR(30),
    currency VARCHAR(15),
    launched_at INT,
    deadline INT,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    category VARCHAR(20),
	subcategory VARCHAR(20),
    FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY (category) REFERENCES Category (category),
    FOREIGN KEY (subcategory) REFERENCES Subcategory (subcategory)
);

*/

--Select Statements for Tables

/*

SELECT first_name, last_name 
FROM Contacts
;

SELECT category
FROM Category
;

SELECT subcategory
FROM Subcategory
;

SELECT contact_id, backers_count, deadline, outcome
FROM Crowdfunding
;

*/

--Select Statements for Data
/*

SELECT company_name, goal, pledged, outcome, category, subcategory
FROM Crowdfunding
WHERE outcome < 0
;

SELECT Crowdfunding.company_name, Contacts.first_name, Contacts.last_name
FROM Crowdfunding
JOIN Contacts ON Crowdfunding.contact_id = Contacts.contact_id
;

SELECT Category.category_id, Subcategory.subcategory_id, Crowdfunding.goal, Crowdfunding.outcome
FROM Crowdfunding
JOIN Subcategory ON Crowdfunding.subcategory_id = Subcategory.subcategory_id
JOIN Category ON Subcategory.category_id = Category.category_id
;

*/