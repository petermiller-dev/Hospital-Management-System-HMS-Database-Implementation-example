-- Get a list of all patients and their admission dates
SELECT FirstName, LastName, AdmissionDate
FROM Patients;

-- Get the count of male and female patients
SELECT Gender, COUNT(*) AS PatientCount
FROM Patients
GROUP BY Gender;

-- Get the list of doctors and their specializations
SELECT FirstName, LastName, Specialization
FROM Doctors;

-- Get a list of upcoming appointments, including patient names and appointment dates
SELECT P.FirstName AS PatientFirstName, P.LastName AS PatientLastName, D.FirstName AS DoctorFirstName, D.LastName AS DoctorLastName, A.AppointmentDate
FROM Appointments AS A
JOIN Patients AS P ON A.PatientID = P.PatientID
JOIN Doctors AS D ON A.DoctorID = D.DoctorID
WHERE A.AppointmentDate >= NOW();

-- Get a patient's medical history, including visit date, symptoms, diagnosis, and prescription
SELECT VisitDate, Symptoms, Diagnosis, Prescription
FROM MedicalHistory
WHERE PatientID = 1;  -- Replace with the patient's ID

-- Get the total amount of invoices for a specific patient
SELECT SUM(Amount) AS TotalAmount
FROM Invoices
WHERE PatientID = 2;  -- Replace with the patient's ID

-- Get a list of medications available in the pharmacy
SELECT MedicationName, UnitPrice, QuantityInStock
FROM Pharmacy;

-- Get a list of medications that need to be delivered (orders not yet delivered)
SELECT P.FirstName AS PatientFirstName, P.LastName AS PatientLastName, M.MedicationName, MO.QuantityOrdered
FROM MedicationOrders AS MO
JOIN Patients AS P ON MO.PatientID = P.PatientID
JOIN Pharmacy AS M ON MO.MedicationID = M.MedicationID
WHERE MO.Delivered = FALSE;

-- Get a list of upcoming surgeries, including doctor names, surgery date, and room number
SELECT D.FirstName AS DoctorFirstName, D.LastName AS DoctorLastName, SS.SurgeryDate, SS.RoomNumber
FROM SurgerySchedule AS SS
JOIN Doctors AS D ON SS.DoctorID = D.DoctorID
WHERE SS.SurgeryDate >= NOW();
