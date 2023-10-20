-- Create a schema for the hospital database
CREATE SCHEMA HospitalDB;
USE HospitalDB;

-- Define the tables

-- Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender CHAR(1),
    ContactNumber VARCHAR(15),
    Address VARCHAR(100),
    AdmissionDate DATETIME,
    DischargeDate DATETIME
);

-- Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Specialization VARCHAR(50),
    ContactNumber VARCHAR(15),
    LicenseNumber VARCHAR(20) UNIQUE
);

-- Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME,
    Description TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- MedicalHistory table
CREATE TABLE MedicalHistory (
    HistoryID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    VisitDate DATE,
    Symptoms TEXT,
    Diagnosis TEXT,
    Prescription TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Invoices table (for billing)
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    InvoiceDate DATE,
    Amount DECIMAL(10, 2),
    Paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Pharmacy table
CREATE TABLE Pharmacy (
    MedicationID INT PRIMARY KEY AUTO_INCREMENT,
    MedicationName VARCHAR(100) NOT NULL,
    Manufacturer VARCHAR(100),
    UnitPrice DECIMAL(10, 2),
    QuantityInStock INT
);

-- MedicationOrders table
CREATE TABLE MedicationOrders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    MedicationID INT,
    OrderDate DATE,
    QuantityOrdered INT,
    Delivered BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (MedicationID) REFERENCES Pharmacy(MedicationID)
);

-- SurgerySchedule table
CREATE TABLE SurgerySchedule (
    SurgeryID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorID INT,
    SurgeryDate DATETIME,
    RoomNumber VARCHAR(10),
    Description TEXT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Define additional tables as needed for your project

-- Create indexes and constraints as necessary

-- Example: Index on Patient's ContactNumber for quick lookup
CREATE INDEX idx_contact_number ON Patients(ContactNumber);

-- Example: Unique constraint on Doctor's LicenseNumber
ALTER TABLE Doctors ADD CONSTRAINT unq_license_number UNIQUE (LicenseNumber);
