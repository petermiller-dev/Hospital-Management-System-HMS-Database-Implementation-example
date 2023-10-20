-- Insert a new patient's information
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, ContactNumber, Address, AdmissionDate)
VALUES ('Mary', 'Johnson', '1995-03-20', 'F', '555-123-4567', '456 Oak St', '2023-11-05');

-- Insert a new doctor's information
INSERT INTO Doctors (FirstName, LastName, Specialization, ContactNumber, LicenseNumber)
VALUES ('Dr. Williams', 'Pediatrician', 'Pediatrics', '555-555-7890', 'PEDI67890');

-- Schedule a new appointment
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Description)
VALUES (3, 2, '2023-11-10 14:30:00', 'Pediatric checkup for Mary Johnson');

-- Add a new medical history entry
INSERT INTO MedicalHistory (PatientID, VisitDate, Symptoms, Diagnosis, Prescription)
VALUES (3, '2023-11-02', 'Fever and cough', 'Common cold', 'Rest and fluids');

-- Create a new invoice
INSERT INTO Invoices (PatientID, InvoiceDate, Amount, Paid)
VALUES (3, '2023-11-10', 150.00, FALSE);

-- Add a new medication to the pharmacy
INSERT INTO Pharmacy (MedicationName, Manufacturer, UnitPrice, QuantityInStock)
VALUES ('Paracetamol', 'Generic', 4.50, 100);

-- Place a new medication order
INSERT INTO MedicationOrders (PatientID, MedicationID, OrderDate, QuantityOrdered, Delivered)
VALUES (1, 1, '2023-11-15', 5, FALSE);

-- Schedule a new surgery
INSERT INTO SurgerySchedule (DoctorID, SurgeryDate, RoomNumber, Description)
VALUES (1, '2023-12-05 10:00:00', 'OR-101', 'Appendectomy for patient John Doe');

-- Hire a new employee
INSERT INTO Employees (FirstName, LastName, Position, HireDate, Salary)
VALUES ('Nurse', 'Anderson', 'Registered Nurse', '2023-11-08', 60000.00);
