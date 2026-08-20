Database Hospital is created.
It is used while creating tables Department, Appointment, Doctor, Patient.
Attributes in table Department are Department_ID, Department_Name.
Attributes in table Appointment are Appointment_no.
Attributes in table Doctor are Doctor_ID, Doctor_Name, Department_ID where foreign key Department_ID references Department_ID of table Department.
Attributes in table Patient are Patient_Name, Appointment_no where foreign key Appointment_no references Appointment_no of table Appointment.
Values are inserted into all four tables and tables are displayed.
