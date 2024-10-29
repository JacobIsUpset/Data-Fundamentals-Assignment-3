
/* Example One */

CREATE TABLE Departments(
    departmentID INT,
    departmentName VARCHAR(55) NOT NULL,
    departmentLocation VARCHAR(150) NOT NULL,
    PRIMARY KEY(departmentID)
);

CREATE TABLE Employees(
    employeeID INT,
    employeeName VARCHAR(55) NOT NULL,
    employeePosition VARCHAR(55) NOT NULL,
    employeeSalary FLOAT NOT NULL,
    departmentID INT,
    PRIMARY KEY(employeeID)
    FOREIGN KEY(departmentID) REFERENCES Departments(departmentID)
);

/* Example two */


CREATE TABLE Projects(
    projectID INT,
    projectName VARCHAR(55) NOT NULL,
    projectStartDate DATE NOT NULL,
    taskID VARCHAR(150),
    PRIMARY KEY(projectID),
);

CREATE TABLE Tasks(
    taskID INT,
    taskDesc VARCHAR(150) NOT NULL,
    taskDueDate DATE,
    projectID
    PRIMARY KEY(taskID)
    FOREIGN KEY projectID REFERENCES Projects(projectID)
);

ALTER TABLE Projects
FOREIGN KEY taskID REFERENCES Tasks(taskID);

/* Example Three */

CREATE TABLE Manufacturers(
    ManufacturerID INT,
    ManufacturerName VARCHAR(55) NOT NULL,
    ManufacturersCountry VARCHAR(55) NOT NULL,
    PRIMARY KEY(ManufacturerID)
)

CREATE TABLE Products(
    productID INT,
    productName VARCHAR(55) NOT NULL,
    productPrice FLOAT NOT NULL,
    ManufacturerID
    PRIMARY KEY(productID)
    FOREIGN KEY ManufacturerID REFERENCES Manufacturers(ManufacturerID)
)

/* Example four */

CREATE TABLE Authors(

)

CREATE TABLE Posts(
    
)