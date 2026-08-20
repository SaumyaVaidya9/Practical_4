create database Hospital;
use Hospital;
create table Department
(Department_ID int primary key,
Department_Name varchar (50) unique not null);
create table Appointment
(Appointment_no int primary key);
create table Doctor
(Doctor_ID int primary key,
Doctor_Name varchar(50) unique not null,
Department_ID int,
foreign key (Department_ID) references Department(Department_ID));
create table Patient
(Patient_Name varchar(50) unique not null,
Appointment_no int,
foreign key(Appointment_no) references Appointment(Appointment_no));
insert into Department (Department_ID,Department_Name)
values(01,"Emergency Department"),
(02,"Intensive Care Unit"),
(03,"Outpatient Department"),
(04,"Cardiology"),
(05,"Pediatrics"),
(06,"Orthopedics"),
(07,"Obstetrics and Gynecology"),
(08,"Neurology"),
(09,"Oncology"),
(10,"Radiology");
select*from Department;
insert into Appointment(Appointment_no)
values(1001),
(1002),
(1003),
(1004),
(1005),
(1006),
(1007),
(1008),
(1009),
(1010);
select*from Appointment;
insert into Doctor(Doctor_ID,Doctor_Name,Department_ID)
values(1,"Aadya",01),
(2,"Ananya",02),
(3,"Shanaya",03),
(4,"Kavya",04),
(5,"Lavanya",05),
(6,"Navya",06),
(7,"Nitya",07),
(8,"Anaya",08),
(9,"Tanaya",09),
(10,"Aaradhya",10);
select*from Doctor;
insert into Patient(Patient_Name,Appointment_no)
values("Suresh",1001),
("Ramesh",1002),
("Ganesh",1003),
("Dinesh",1004),
("Rajesh",1005),
("Mahesh",1006),
("Tanishka",1007),
("Rakesh",1008),
("Umesh",1009),
("Kamlesh",1010);
select*from Patient;