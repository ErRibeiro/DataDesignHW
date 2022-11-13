// See https://aka.ms/new-console-template for more information
using Wee9SQL;

DataBase w = new DataBase();
ExportReport er;
w.Connect();
w.Report1();
er = new ExportReport(w.r1, w.SPname);

er.ExportReport1();
w.WriteTableOne();
/////////////////////////

w.Report2();

er = new ExportReport(w.r2, w.SPname);
er.ExportReport2();
w.WriteTableTwo();

///////////////////////////



w.Report3();
er = new ExportReport(w.r3, w.SPname);
er.ExportReport3();
w.WriteTableThree();

///////////////////////////
w.Report4();
er = new ExportReport(w.r4, w.SPname);
er.ExportReport4();
w.WriteTableFour();


/* 
Run the SQL Scripts in Canvas to generate tables/data and use as your SOURCE. 
Write an ETL process to generate the reports on the next slide 
Create a table in SQL to house the data for each report, this will be your destination. ONE TABLE PER REPORT
No inline SQL in the code is allowed
Use SPs, Views, and function as appropriate
Extract the data, save in a file, then programmatically Load it into a sql table of your own design

============================================================================================================================

Report 1

This report will have student information.
Fields and rule required by destination:
Id
Full name
SSN: Last 4 of ssn then set to “N/A”
Full address: Format => Address, City, State. Zip => Abbreviate to 2 letters
Phone: If no phone then set to “000-000-0000” 

Generate the report to Report1.txt then programmatically import it into your Report_1 Table


SELECT s.id as 'ID',
CONCAT(s.first_name,' ',s.last_name) as 'Full_Name',
CASE
WHEN ssn  is null then 'N/A'
WHEN ssn IS NOT NULL then SUBSTRING(CAST(si.ssn as nvarchar(40)), 8, 10)
else ssn
END as SSN,
CASE
WHEN address  is null then 'N/A'
WHEN address IS NOT NULL then CONCAT(si.address,', ',si.city,', ',SUBSTRING(CAST(si.state as nvarchar(2)), 1, 2))
END as Full__Address,
CASE
WHEN phone  is null then '000-000-0000'
ELSE phone
END as Phone
FROM [Student_Info] AS si
LEFT JOIN [Student] AS s
ON s.id=si.student_id


=============================================================================================================================

Report 2

This report will have student enrollment information.
Fields and rule required by destination:
Id
Full name
Number of Course: if none, set to 0
Number of Courses Completed
Number of Courses Not Completed
Number of Courses In Progress
Generate the report to Report2.txt then programmatically import it into your Report_2 Table

SELECT DISTINCT(Student_Enrollment.student_id), COUNT (Student_Enrollment.student_id) as 'NumberOfCourses'
FROM [Student_Enrollment]
GROUP BY student_id
ORDER BY student_id


SELECT student_id,  course_code, completed,
CASE 
WHEN completed is null then 'InProgress'
WHEN completed = '1' then 'Completed' 
WHEN completed = '0' then 'Incomplete' 
ELSE completed
END AS completed
FROM [Student_Enrollment]


SELECT DISTINCT(Student_Enrollment.student_id), COUNT (Student_Enrollment.student_id) as 'NumberOfCourses'
FROM [Student_Enrollment]
GROUP BY student_id
ORDER BY student_id


------------------------------


SELECT DISTINCT s.id, 
CONCAT(s.first_name,' ',s.last_name) AS Full_Name,
CASE completed 
WHEN 1 
THEN 0 
END as completedCourses,
COUNT(CASE completed WHEN 0 THEN 0 END) as incompletCourses
FROM Student_Enrollment AS se
JOIN [Student] as s
ON s.id = se.id
GROUP BY s.id, first_name, last_name, completed
ORDER BY id ASC

==============================================================================================================================

Report 3

This report will have course stats 
Fields and rule required by destination:
Course Id
Course Code
Number of students currently enrolled
Number of student completed
Number of student failed/Dropped
Generate the report to Report3.txt then programmatically import it into your Report_3 Table

==============================================================================================================================

Report 4

This report will have course information for EACH course.
Fields and rule required by destination:
Course Code
IDs of ALL enrolled students separated by a comma
Which state has the highest number of student in the course irrelevant of completion status
Generate the report to Report4.txt then programmatically import it into your Report_4 Table
 
==============================================================================================================================

*/
