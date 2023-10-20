-- Update a patient's admission date and address
UPDATE Patients
SET AdmissionDate = '2023-11-01', Address = '789 Elm St'
WHERE PatientID = 1;  -- Replace with the patient's ID

-- Update a doctor's contact number
UPDATE Doctors
SET ContactNumber = '555-555-4321'
WHERE DoctorID = 2;  -- Replace with the doctor's ID

-- Update an appointment's description
UPDATE Appointments
SET Description = 'Follow-up checkup'
WHERE AppointmentID = 1;  -- Replace with the appointment's ID

-- Mark an invoice as paid
UPDATE Invoices
SET Paid = TRUE
WHERE PatientID = 2;  -- Replace with the patient's ID

-- Update medication unit price in the pharmacy
UPDATE Pharmacy
SET UnitPrice = 6.75
WHERE MedicationName = 'Ibuprofen';

-- Mark a medication order as delivered
UPDATE MedicationOrders
SET Delivered = TRUE
WHERE OrderID = 1;  -- Replace with the order's ID

-- Change a doctor's specialization
UPDATE Doctors
SET Specialization = 'Neurologist'
WHERE DoctorID = 1;  -- Replace with the doctor's ID

-- Update surgery date and room number
UPDATE SurgerySchedule
SET SurgeryDate = '2023-11-15 15:30:00', RoomNumber = 'OR-303'
WHERE SurgeryID = 1;  -- Replace with the surgery's ID
