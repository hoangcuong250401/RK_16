DROP DATABASE IF EXISTS Final_Exam;
CREATE DATABASE Final_Exam;
USE Final_Exam;

DROP TABLE IF EXISTS Student;
CREATE TABLE Student(
	ID			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `NAME`		NVARCHAR (50),
    Age			SMALLINT,
    Gender		VARCHAR(10)
    );


DROP TABLE IF EXISTS `Subject`;
CREATE TABLE `Subject`(
	ID			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `NAME`		NVARCHAR (50)
	);
    
    
DROP TABLE IF EXISTS `StudentSubject`;
CREATE TABLE `StudentSubject`(
    StudentID	TINYINT UNSIGNED,
    SubjectID	TINYINT UNSIGNED,
    Mark		SMALLINT,
    `Date`		DATETIME,
	PRIMARY KEY (StudentID,SubjectID)
    
    );

-- insert data
INSERT INTO Student	(`name`	,	age	,	gender	)	
VALUES				('Cuong',	18	,	'0'		),
					('Minh'	,	20	,	NULL	),
                    ('Lien'	,	18	,	'1'		);


INSERT INTO `Subject`(	`Name`	)
VALUES           	('Vat Li'),
					('Hoa hoc' ),                  
					('Tieng Anh');
               
INSERT INTO StudentSubject	(	StudentID	,	SubjectID	,	Mark	,	`Date`		)	
VALUES						(		1		,		1		,	 8		,'2021-04-05'	),
							(		2		,		2		,	 9		,'2021-04-07'	),
							(		3		,		1		,	 10		,'2021-04-10'	);
                            
                            
-- Q2.a: lấy tất cả các ôn học không có bất kì điểm nào
SELECT		s.`Name`, Mark  
FROM  		`Subject` S
LEFT JOIN	StudentSubject SS ON s.ID=SubjectID
WHERE 		Mark IS NULL;
-- Q2.b: Lấy danh sách các ôn học có ít nhất 2 điểm 
SELECT		s.`Name`, Mark  
FROM  		`Subject` S
LEFT JOIN	StudentSubject SS ON s.ID=SubjectID
WHERE 		Mark >= 2;

-- Q3 : tạo view
DROP VIEW IF EXISTS StudentInfo;
CREATE OR REPLACE VIEW StudentInfo(Student_ID,Subject_ID, Student_Name, Student_Age,
Subject_Name, Mark, `Date`,Student_Gender)
AS
SELECT  st.ID , sj.ID , st.`name` , st.age , sj.`Name`,ss.Mark,ss.`Date`,
CASE st.gender 
WHEN 1 THEN 'Female'
WHEN 0 THEN 'Male'
ELSE 'Unknow'
END
FROM Student St 
JOIN	StudentSubject ss ON st.ID=ss.StudentID
JOIN	`Subject` sj ON sj.ID=ss.SubjectID;

SELECT * 
FROM StudentInfo;

-- Q4: tạo trigger
-- 4.a :
DROP TRIGGER IF EXISTS SubjectUpdateID;
DELIMITER $$
CREATE TRIGGER SubjectUpdateID
	BEFORE UPDATE 
    ON `Subject`
    FOR EACH ROW 
BEGIN 
	UPDATE StudentSubject
    SET SubjectID = NEW.ID
    WHERE SubjectID = OLD.ID;
END$$
DELIMITER ;
-- Q4.b
DROP TRIGGER IF EXISTS StudentDeleteID;
DELIMITER $$
CREATE TRIGGER StudentDeleteID
	BEFORE DELETE
    ON `Student`
    FOR EACH ROW 
BEGIN 
	DELETE FROM StudentSubject
	WHERE StudentID = OLD.ID;
END$$
DELIMITER ;


 
                            


