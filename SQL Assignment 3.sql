
/* Example One */

CREATE TABLE Departments(
    departmentID INT,
    departmentName VARCHAR(64) NOT NULL,
    departmentLocation VARCHAR(150) NOT NULL,
    PRIMARY KEY(departmentID),
);

CREATE TABLE Employees(
    employeeID INT,
    employeeName VARCHAR(64) NOT NULL,
    employeePosition VARCHAR(64) NOT NULL,
    employeeSalary FLOAT NOT NULL,
    departmentID INT,
    PRIMARY KEY(employeeID),
    FOREIGN KEY(departmentID) REFERENCES Departments(departmentID),
);

/* Example two */


CREATE TABLE Projects(
    projectID INT,
    projectName VARCHAR(64) NOT NULL,
    projectStartDate DATE NOT NULL,
    taskID VARCHAR(150),
    PRIMARY KEY(projectID),
);

CREATE TABLE Tasks(
    taskID INT,
    taskDesc VARCHAR(150) NOT NULL,
    taskDueDate DATE,
    projectID INT,
    PRIMARY KEY(taskID),
    FOREIGN KEY (projectID) REFERENCES Projects(projectID),
);

ALTER TABLE Projects
ADD FOREIGN KEY (taskID) REFERENCES Tasks(taskID);

/* Example Three */

CREATE TABLE Manufacturers(
    ManufacturerID INT,
    ManufacturerName VARCHAR(64) NOT NULL,
    ManufacturersCountry VARCHAR(64) NOT NULL,
    PRIMARY KEY(ManufacturerID)
)

CREATE TABLE Products(
    productID INT,
    productName VARCHAR(64) NOT NULL,
    productPrice FLOAT NOT NULL,
    ManufacturerID INT,
    PRIMARY KEY(productID),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);

/* Example four */

CREATE TABLE Authors(
    authorID INT,
    authorName VARCHAR(64) NOT NULL,
    authorEmail VARCHAR(64) NOT NULL UNIQUE,
    PRIMARY KEY (authorID),
);

CREATE TABLE Posts(
    postID INT,
    postTitle VARCHAR(55) NOT NULL,
    postContent VARCHAR(250) NOT NULL,
    authorID INT,
    PRIMARY KEY (postID),
    FOREIGN KEY (authorID) REFERENCES Authors(authorID),
);

/* example five */

CREATE TABLE Memberships(
    membershipID INT,
    membershipType INT NOT NULL,
    monthlyFee FLOAT NOT NULL,
    PRIMARY KEY (membershipID)
);

CREATE TABLE Members(
    memberID INT,
    memberName VARCHAR(64) NOT NULL,
    joinDate DATE NOT NULL,
    membershipType INT NOT NULL,
    PRIMARY KEY (memberID),
    FOREIGN KEY (membershipType) REFERENCES Memberships(membershipType),
);

/* example six */

CREATE TABLE Countries(
    countryID INT,
    countryName VARCHAR(64) NOT NULL,
    coutryContinent VARCHAR(64) NOT NULL,
    cityID INT NOT NULL,
    PRIMARY KEY (countryID),
);

CREATE TABLE Cities(
    cityID INT,
    cityName VARCHAR(64) NOT NULL,
    cityPopulation FLOAT NOT NULL,
    countryID INT,
    PRIMARY KEY (cityID),
    FOREIGN KEY (countryID) REFERENCES Countries(countryID),
);

ALTER TABLE Countries
ADD FOREIGN KEY (cityID) REFERENCES cities(cityID);

/* example seven */

CREATE TABLE Catagories(
    catagoryID INT,
    catagoryName VARCHAR(64) NOT NULL UNIQUE,
    catagoryDesc TEXT NOT NULL,
    PRIMARY KEY(catagoryID),
)

CREATE TABLE Products(
    productID INT,
    productName VARCHAR(64),
    productPrice FLOAT NOT NULL,
    catagoryID INT,
    PRIMARY KEY(productID),
    FOREIGN KEY (catagoryID) REFERENCES Catagories(catagoryID),
)

/* example eight */

CREATE TABLE Departments(
    departmentID INT,
    departmentName VARCHAR(64) NOT NULL,
    departmentBuilding VARCHAR(64) NOT NULL,
    PRIMARY KEY(departmentID),
);

CREATE TABLE Professors(
    professorID INT,
    professorName VARCHAR(64) NOT NULL,
    professorTitle VARCHAR(64) NOT NULL,
    departmentID INT,
    PRIMARY KEY (professorID),
    FOREIGN KEY (departmentID) REFERENCES Departments(departmentID),
);