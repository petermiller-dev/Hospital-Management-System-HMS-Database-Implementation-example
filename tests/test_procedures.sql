-- Create a test procedure to get the number of patients by gender
DELIMITER //
CREATE PROCEDURE GetPatientCountByGender(IN gender CHAR(1))
BEGIN
    SELECT COUNT(*) AS PatientCount
    FROM Patients
    WHERE Gender = gender;
END //
DELIMITER ;

-- Test the GetPatientCountByGender procedure for male patients
CALL GetPatientCountByGender('M');

-- Test the GetPatientCountByGender procedure for female patients
CALL GetPatientCountByGender('F');

-- Create a test procedure to retrieve the list of upcoming appointments for a patient
DELIMITER //
CREATE PROCEDURE GetUpcomingAppointments(IN patientID INT)
BEGIN
    SELECT A.AppointmentDate, D.FirstName AS DoctorFirstName, D.LastName AS DoctorLastName
    FROM Appointments AS A
    JOIN Doctors AS D ON A.DoctorID = D.DoctorID
    WHERE A.PatientID = patientID AND A.AppointmentDate > NOW();
END //
DELIMITER ;

-- Test the GetUpcomingAppointments procedure for a specific patient
CALL GetUpcomingAppointments(1);  -- Replace with a valid patient ID

-- Create a test procedure to update a patient's contact number
DELIMITER //
CREATE PROCEDURE UpdatePatientContactNumber(IN patientID INT, IN newContactNumber VARCHAR(15))
BEGIN
    UPDATE Patients
    SET ContactNumber = newContactNumber
    WHERE PatientID = patientID;
END //
DELIMITER ;

-- Test the UpdatePatientContactNumber procedure to change a patient's contact number
CALL UpdatePatientContactNumber(1, '555-123-4567');  -- Replace with a valid patient ID and new contact number
