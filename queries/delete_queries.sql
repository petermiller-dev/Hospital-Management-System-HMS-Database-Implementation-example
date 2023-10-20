-- Delete a patient record by PatientID
DELETE FROM Patients
WHERE PatientID = 3;  -- Replace with the patient's ID you want to delete

-- Delete a doctor record by DoctorID
DELETE FROM Doctors
WHERE DoctorID = 2;  -- Replace with the doctor's ID you want to delete

-- Cancel an appointment by AppointmentID
DELETE FROM Appointments
WHERE AppointmentID = 2;  -- Replace with the appointment's ID you want to cancel

-- Remove a medical history entry by HistoryID
DELETE FROM MedicalHistory
WHERE HistoryID = 2;  -- Replace with the medical history entry's ID you want to remove

-- Delete an unpaid invoice by InvoiceID
DELETE FROM Invoices
WHERE InvoiceID = 1;  -- Replace with the invoice's ID you want to delete

-- Remove a medication from the pharmacy by MedicationID
DELETE FROM Pharmacy
WHERE MedicationID = 2;  -- Replace with the medication's ID you want to remove

-- Cancel a medication order by OrderID
DELETE FROM MedicationOrders
WHERE OrderID = 1;  -- Replace with the medication order's ID you want to cancel

-- Cancel a scheduled surgery by SurgeryID
DELETE FROM SurgerySchedule
WHERE SurgeryID = 1;  -- Replace with the surgery's ID you want to cancel

-- Terminate an employee by EmployeeID
DELETE FROM Employees
WHERE EmployeeID = 2;  -- Replace with the employee's ID you want to terminate

