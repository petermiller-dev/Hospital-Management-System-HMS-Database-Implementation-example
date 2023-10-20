-- Seed data for Patients
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, ContactNumber, Address, AdmissionDate, DischargeDate)
VALUES
    ('John', 'Doe', '1980-01-15', 'M', '123-456-7890', '123 Main St', '2023-10-10', NULL),
    ('Jane', 'Smith', '1990-05-20', 'F', '987-654-3210', '456 Elm St', '2023-10-11', NULL);

-- Seed data for Doctors
INSERT INTO Doctors (FirstName, LastName, Specialization, ContactNumber, LicenseNumber)
VALUES
    ('Dr. Smith', 'Cardiologist', 'Cardiology', '555-555-1234', 'CARD12345'),
    ('Dr. Johnson', 'Orthopedic Surgeon', 'Orthopedics', '555-555-5678', 'ORTH56789');

-- Seed data for Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Description)
VALUES
    (1, 1, '2023-10-15 09:00:00', 'Heart checkup'),
    (2, 2, '2023-10-16 10:30:00', 'Knee pain');

-- Seed data for MedicalHistory
INSERT INTO MedicalHistory (PatientID, VisitDate, Symptoms, Diagnosis, Prescription)
VALUES
    (1, '2023-09-10', 'Chest pain and shortness of breath', 'Hypertension', 'Prescribed medication'),
    (2, '2023-08-20', 'Knee pain and swelling', 'Arthritis', 'Physical therapy');

-- Seed data for Invoices
INSERT INTO Invoices (PatientID, InvoiceDate, Amount, Paid)
VALUES
    (1, '2023-10-15', 120.00, TRUE),
    (2, '2023-10-16', 75.50, FALSE);

-- Seed data for Pharmacy
INSERT INTO Pharmacy (MedicationName, Manufacturer, UnitPrice, QuantityInStock)
VALUES
    ('Aspirin', 'Bayer', 5.00, 200),
    ('Ibuprofen', 'Advil', 6.50, 150);

-- Seed data for MedicationOrders
INSERT INTO MedicationOrders (PatientID, MedicationID, OrderDate, QuantityOrdered, Delivered)
VALUES
    (1, 1, '2023-10-15', 2, TRUE),
    (2, 2, '2023-10-16', 1, FALSE);

-- Seed data for SurgerySchedule
INSERT INTO SurgerySchedule (DoctorID, SurgeryDate, RoomNumber, Description)
VALUES
    (2, '2023-11-05 14:00:00', 'OR-101', 'Knee surgery for patient Jane Smith'),
    (1, '2023-11-10 10:30:00', 'OR-202', 'Heart bypass surgery for patient John Doe');

-- Seed data for Employees
INSERT INTO Employees (FirstName, LastName, Position, HireDate, Salary)
VALUES
    ('Nurse', 'Johnson', 'Registered Nurse', '2023-01-15', 55000.00),
    ('Admin', 'Smith', 'Hospital Administrator', '2022-05-20', 75000.00);
