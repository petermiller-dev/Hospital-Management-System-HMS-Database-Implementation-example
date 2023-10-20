-- Check the total number of patients
SELECT COUNT(*) AS TotalPatients FROM Patients;

-- List the first 5 patients
SELECT FirstName, LastName FROM Patients LIMIT 5;

-- Verify the number of doctors
SELECT COUNT(*) AS TotalDoctors FROM Doctors;

-- List the available medications in the pharmacy
SELECT MedicationName, QuantityInStock FROM Pharmacy;

-- Check the total number of appointments
SELECT COUNT(*) AS TotalAppointments FROM Appointments;

-- List upcoming appointments for today
SELECT FirstName, LastName, AppointmentDate
FROM Patients
INNER JOIN Appointments ON Patients.PatientID = Appointments.PatientID
WHERE DATE(AppointmentDate) = CURDATE();

-- Verify the number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Check the total number of medical history entries
SELECT COUNT(*) AS TotalMedicalHistoryEntries FROM MedicalHistory;

-- List unpaid invoices
SELECT FirstName, LastName, InvoiceDate, Amount
FROM Patients
INNER JOIN Invoices ON Patients.PatientID = Invoices.PatientID
WHERE Paid = FALSE;
