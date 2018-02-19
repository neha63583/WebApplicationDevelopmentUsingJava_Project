CREATE DATABASE IF NOT EXISTS COMP3095;
USE COMP3095;
grant all on COMP3095.* to 'admin'@'localhost' identified by 'admin'; 


CREATE TABLE USERS 
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	firstname varchar(255),
	lastname varchar(255),
	email varchar(255), 
	role varchar(20),
	username varchar(20),
	password varchar(20)	
);

INSERT INTO `USERS` (`firstname`, `lastname`, `email`, `role`, `username`, `password`) VALUES
('NULL', 'NULL', 'NULL', 'NULL', 'admin', 'admin');

CREATE TABLE DEPARTMENT
( 
	departmentname varchar(255) PRIMARY KEY,
	departmentlocation varchar(255)
);

INSERT INTO `department` (`departmentname`, `departmentlocation`) VALUES ('Software', 'Floor-1'); 
INSERT INTO `department` (`departmentname`, `departmentlocation`) VALUES ('Hardware', 'Floor-2'); 
INSERT INTO `department` (`departmentname`, `departmentlocation`) VALUES ('Management', 'Floor-3'); 
INSERT INTO `department` (`departmentname`, `departmentlocation`) VALUES ('Technician', 'Floor-4'); 
INSERT INTO `department` (`departmentname`, `departmentlocation`) VALUES ('Network', 'Floor-5'); 


CREATE TABLE EMPLOYEE
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	firstname varchar(255),
	lastname varchar(255),
    employeenumber varchar(255),
	email varchar(255),
        hireyear varchar(255),
        jobposition varchar(255),
        departmentname varchar(255),
        FOREIGN KEY (departmentname) REFERENCES DEPARTMENT(departmentname) 		
);

INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Neha', 'Arora', '88172001', 'neha.arora@georgebrown.ca', '2011', 'Web Developer', 'Software');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Justin', 'Frasca', '88172002', 'justin.frasca@georgebrown.ca', '2010', 'Software engineer', 'Software');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Chris', 'Angelo', '88172003', 'chris.angelo@georgebrown.ca', '2014', 'Software Tester', 'Software');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Raman', 'Preet', '88172004', 'raman.preet@georgebrown.ca', '2011', 'Technical consultant', 'Software');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Priya', 'Khan', '88172005', 'priya.khan@georgebrown.ca', '2006', 'Sysytem Analyst', 'Software');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Peter', 'Parker', '88172006', 'peter.parker@georgebrown.ca', '2010', 'Business Analyst', 'Software');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Ram', 'Verma', '88172007', 'ram.verma@georgebrown.ca', '2010', 'Business Analyst', 'Software');


INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Shabana', 'Kher', '88173001', 'shabana.kher@georgebrown.ca', '2010', 'Business Analyst', 'Hardware');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Leo', 'Gel', '88173002', 'leo.gel@georgebrown.ca', '2011', 'Business Operator', 'Hardware');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Dawson', 'Cole', '88173003', 'dawson.cole@georgebrown.ca', '2012', 'Business Operator', 'Hardware');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Anjana', 'Khan', '88173004', 'anjana.khan@georgebrown.ca', '2013', 'Business Operator', 'Hardware');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Anjela', 'Sipi', '88173005', 'anjela.sipi@georgebrown.ca', '2012', 'Business Operator', 'Hardware');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Pankaj', 'Oberai', '88173006', 'pankaj.oberai@georgebrown.ca', '2014', 'Business Operator', 'Hardware');

INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Zen', 'Khana', '88174001', 'zen.khana@georgebrown.ca', '2010', 'Business Analyst', 'Management');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Pat', 'Daun', '88174002', 'pat.daun@georgebrown.ca', '2011', 'Business Operator', 'Management');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Cal', 'Peter', '88174003', 'cal.peter@georgebrown.ca', '2012', 'Assistant Manager', 'Management');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Tom', 'Dawson', '88174004', 'tom.dawson@georgebrown.ca', '2013', 'Junior Manager', 'Management');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Sara', 'Dup', '88174005', 'sara.dup@georgebrown.ca', '2012', 'Junior Assistant', 'Management');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Bella', 'Mil', '88174006', 'bella.mil@georgebrown.ca', '2014', 'Head Manager', 'Management');

INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Zuber', 'Roi', '88175001', 'zuber.roi@georgebrown.ca', '2010', 'Business Analyst', 'Network');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Jackson', 'Mike', '88175002', 'jackson.mike@georgebrown.ca', '2011', 'Business Operator', 'Network');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Jacky', 'Taw', '88175003', 'jacky.taw@georgebrown.ca', '2012', 'Assistant Manager', 'Network');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Michelle', 'Lilo', '88175004', 'michelle.lilo@georgebrown.ca', '2013', 'Junior Manager', 'Network');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Diana', 'Frasca', '88175005', 'diana.frasca@georgebrown.ca', '2012', 'Junior Assistant', 'Network');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Zubana', 'Khami', '88175006', 'zubana.khami@georgebrown.ca', '2014', 'Head Manager', 'Network');

INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Berry', 'Diwan', '88176001', 'berry.diwan@georgebrown.ca', '2010', 'Business Analyst', 'Technician');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Tuck', 'Kole', '88176002', 'tuck.kole@georgebrown.ca', '2011', 'Business Operator', 'Technician');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Jack', 'Ta', '88176003', 'jack.ta@georgebrown.ca', '2012', 'Assistant Manager', 'Technician');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Micheal', 'Zil', '88176004', 'micheal.zil@georgebrown.ca', '2013', 'Junior Manager', 'Technician');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Dina', 'Milo', '88176005', 'dina,milo@georgebrown.ca', '2012', 'Junior Assistant', 'Technician');
INSERT INTO `employee` (`firstname`, `lastname`, `employeenumber`, `email`, `hireyear`, `jobposition`, `departmentname`) 
VALUES ('Bunz', 'Ham', '88176006', 'bunz.ham@georgebrown.ca', '2014', 'Head Manager', 'Technician');



CREATE TABLE GROUPEMP
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	gname varchar(255),
        depName varchar(255),
        emp1 varchar(255),
        emp2 varchar(255),
        emp3 varchar(255),
        emp4 varchar(255),
        emp5 varchar(255),
        emp6 varchar(255),
    FOREIGN KEY (depName) REFERENCES DEPARTMENT(departmentname)
);

INSERT INTO `groupemp` (`id`, `gname`, `depName`, `emp1`, `emp2`, `emp3`, `emp4`, `emp5`, `emp6`) 
VALUES (NULL, 'Software Group 1', 'Software', 'NehaArora', 'JustinFrasca', 'ChrisAngelo', 'RamanPreet', 'PriyaKhan', 'PeterParker');
INSERT INTO `groupemp` (`id`, `gname`, `depName`, `emp1`, `emp2`, `emp3`, `emp4`, `emp5`, `emp6`) 
VALUES (NULL, 'Software Group 2', 'Software', 'RamVerma', 'NehaArora', 'ChrisAngelo', 'RamanPreet', 'PriyaKhan', 'PeterParker');

INSERT INTO `groupemp` (`id`, `gname`, `depName`, `emp1`, `emp2`, `emp3`, `emp4`, `emp5`, `emp6`) 
VALUES (NULL, 'Hardware Group 1', 'Hardware', 'ShabanaKher', 'LeoGel', 'DawsonCole', 'AnjanaKhan', 'AnjelaSipi', 'PankajOberai');


INSERT INTO `groupemp` (`id`, `gname`, `depName`, `emp1`, `emp2`, `emp3`, `emp4`, `emp5`, `emp6`) 
VALUES (NULL, 'Management Group 1', 'Management', 'ZenKhana', 'PatDaun', 'CalPeter', 'TomDawson', 'SaraDup', 'BellaMil');


INSERT INTO `groupemp` (`id`, `gname`, `depName`, `emp1`, `emp2`, `emp3`, `emp4`, `emp5`, `emp6`) 
VALUES (NULL, 'Technician Group 1', 'Technician', 'BerryDiwan', 'TuckKole', 'JackTa', 'MichealZil', 'DinaMilo', 'BunzHam');

INSERT INTO `groupemp` (`id`, `gname`, `depName`, `emp1`, `emp2`, `emp3`, `emp4`, `emp5`, `emp6`) 
VALUES (NULL, 'Network Group 1', 'Network', 'ZuberRoi', 'JacksonMike', 'JackyTaw', 'MichelleLilo', 'DianaFrasca', 'ZubanaKhami');

CREATE TABLE ATTENDANCE
( 
	attendanceid int(11) AUTO_INCREMENT PRIMARY KEY, 
	employeeid int(11),
        attendancedate DATE,
        present INT(1),
    FOREIGN KEY (employeeid) REFERENCES EMPLOYEE(id)
);

INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '1', '2018-01-31', '0');
INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '2', '2018-01-31', '1');
INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '3', '2018-01-31', '0');
INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '4', '2018-01-31', '0');
INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '5', '2018-01-31', '1');
INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '6', '2018-01-31', '1');
INSERT INTO `attendance` (`attendanceid`, `employeeid`, `attendancedate`, `present`) VALUES (NULL, '7', '2018-01-31', '1');



CREATE TABLE `reports` (
  `id` int(25) PRIMARY KEY AUTO_INCREMENT,
  
`ReportName` varchar(25) NOT NULL,
 
`DepName` varchar(25) NOT NULL,
  `Section1` varchar(25) NOT NULL,
 
 `Section2` varchar(25) NOT NULL,
  `Section3` varchar(25) NOT NULL,
  
`Feild1` varchar(25) NOT NULL,
  `Feild2` varchar(25) NOT NULL,
  
`Feild3` varchar(25) NOT NULL,
  `Feild4` varchar(25) NOT NULL,
 
 `Feild5` varchar(25) NOT NULL,
  `Feild6` varchar(25) NOT NULL,
  
`Feild7` varchar(25) NOT NULL,
  `Feild8` varchar(25) NOT NULL,
 
 `Feild9` varchar(25) NOT NULL,
  `Feild10` varchar(25) NOT NULL,
  
`Feild11` varchar(25) NOT NULL,
  `SectionNull` text
);

 

INSERT INTO `reports` (`id`, `ReportName`, `DepName`, `Section1`, `Section2`, `Section3`, `Feild1`, `Feild2`, `Feild3`,`Feild4`, `Feild5`, `Feild6`, `Feild7`, `Feild8`, `Feild9`, `Feild10`,`Feild11`, `SectionNull`) 
 VALUES
(NULL, 'HR Winter 2018 Review', 'Human Resources', 'Professionalism', 'Qualitys', 'Rates', 'Attendance', 'Communication Skills', 'Efficiency', 'Passion Diligence', 'Reliablity','Dilagence', 'Training ', 'Skills', 'Hire Rates', 'Employee Success','Time Line Success', NULL);




CREATE TABLE `submitreport` (
  
 `id` int(35) PRIMARY KEY AUTO_INCREMENT,
  `ReportName` varchar(35) NOT NULL,
 
 `DepName` varchar(35) NOT NULL,
  `Date` varchar(35) NOT NULL,
 
 `employee` varchar(35) DEFAULT NULL,
  `group2` varchar(35) NOT NULL,

  `Section1` varchar(35) NOT NULL,
  `Section2` varchar(35) NOT NULL,
 
 `Section3` varchar(35) NOT NULL,
  `Feild1` varchar(35) NOT NULL,
  
`Feild2` varchar(35) NOT NULL,
  `Feild3` varchar(35) NOT NULL,
  
`Feild4` varchar(35) NOT NULL,
  `Feild5` varchar(35) NOT NULL,
  
`Feild6` varchar(35) NOT NULL,
  `Feild7` varchar(35) NOT NULL,
  
`Feild8` varchar(35) NOT NULL,
  `Feild9` varchar(35) NOT NULL,
  
`Feild10` varchar(35) NOT NULL,
  `Feild11` varchar(35) NOT NULL,
  
`Ev1` int(1) NOT NULL,
  `Ev2` int(1) NOT NULL,
  `Ev3` int(1) NOT NULL,
  
`Ev4` int(1) NOT NULL,
  `Ev5` int(1) NOT NULL,
  `Ev6` int(1) NOT NULL,
  
`Ev7` int(1) NOT NULL,
  `Ev8` int(1) NOT NULL,
  `Ev9` int(1) NOT NULL,
  
`Ev10` int(1) NOT NULL,
  `Ev11` int(1) NOT NULL,
  
`Comments1` varchar(100) NOT NULL,
  `Comments2` varchar(100) NOT NULL,
  
`Comments3` varchar(100) NOT NULL,
  `Comments4` varchar(100) NOT NULL,
  
`Comments5` varchar(100) NOT NULL,
  `Comments6` varchar(100) NOT NULL,
  
`Comments7` varchar(100) NOT NULL,
  `Comments8` varchar(100) NOT NULL,
  
`Comments9` varchar(100) NOT NULL,
  `Comments10` varchar(100) NOT NULL,
  
`Comments11` varchar(100) NOT NULL,
 
 `reportTitle` varchar(35) NOT NULL,
  `SectionNull` text
) ;

INSERT INTO `submitreport` (`id`, `ReportName`, `DepName`, `Date`, `employee`, `group2`, `Section1`, `Section2`, `Section3`, `Feild1`, `Feild2`, `Feild3`, `Feild4`, `Feild5`, `Feild6`, `Feild7`, `Feild8`, `Feild9`, `Feild10`, `Feild11`, `Ev1`, `Ev2`, `Ev3`, `Ev4`, `Ev5`, `Ev6`, `Ev7`, `Ev8`, `Ev9`, `Ev10`, `Ev11`, `Comments1`, `Comments2`, `Comments3`, `Comments4`, `Comments5`, `Comments6`, `Comments7`, `Comments8`, `Comments9`, `Comments10`, `Comments11`, `reportTitle`, `SectionNull`) 
VALUES (NULL, 'HR Winter 2018 Review', 'Human Resources', '2018-09-11', '', 'HR 1', 'Professionalism', 'Quality\'s', 'Rates', 'Attendance', 'Communication', 'Efficiency', 'Passion', 'Diligence', 'Reliability', 'Training', 'Skills', 'Hire', 'Employee', 'Success', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', 'Good ', 'Great', 'Good', 'Good ', '', 'Good', '', 'Good', '', 'Good', 'Good', 'HR 1 Review', NULL);





