USE `Testing_System_Assignment_1`;
-- Add data Department
INSERT INTO Department(Department_Name) 
VALUES
						(N'Marketing'	),
						(N'Sale'		),
						(N'Bảo vệ'		),
						(N'Nhân sự'		),
						(N'Kỹ thuật'	),
						(N'Tài chính'	),
						(N'Phó giám đốc'),
						(N'Giám đốc'	),
						(N'Thư kí'		),
						(N'Bán hàng'	);
    
-- Add data position
INSERT INTO Position	(Position_Name	) 
VALUES 					('Dev'			),
						('Test'			),
						('Scrum Master'	),
						('PM'			); 


-- Add data Account
INSERT INTO `Account`(Email								, Username			, FullName				, Department_ID	, Position_ID, Create_Date)
VALUES 				('hoangcuong2542001@gmail.com'	    , 'cuong250401'		,'Hoàng Mạnh Cường'		,   '5'			,   '1'		,'2020-03-05'),
					('account1@gmail.com'				, 'vti1'		    ,'Nguyễn Thị Liên'	    ,   '1'			,   '2'		,'2020-03-05'),
                    ('account2@gmail.com'				, 'vti2'		    ,'Hoàng Văn Minh'		,   '2'			,   '3'		,'2020-03-07'),
                    ('account3@gmail.com'				, 'vti3'	        ,'Hoàng Tuấn Anh'		,   '3'			,   '4'		,'2020-03-08'),
                    ('account4@gmail.com'				, 'vti4'		    ,'Hoàng Gia Bảo'	    ,   '4'			,   '4'		,'2020-03-10'),
                    ('account5@gmail.com'		        , 'vti5'			,'Nguyễn Tiến Dũng'		,   '6'			,   '3'		,'2020-04-05'),
                    ('account6@gmail.com'			    , 'vti6'		    ,'Trần Đức Anh' 		,   '7'			,   '2'		, NULL		),
                    ('account7@gmail.com'				, 'vti7'			,'Lê Đức Tùng'      	,   '8'			,   '1'		,'2020-04-07'),
                    ('account8@gmail.com'				, 'vti8'		    ,'Hoàng Sơn'		    ,   '9'			,   '2'		,'2020-04-07'),
                    ('account9@gmail.com'			    , 'vti9'		    ,'Bùi Xuân Huấn'		,   '10'		,   '1'		,'2020-04-09');
 
-- Add data Group
INSERT INTO `Group`	(  Group_Name			, Creator_ID		, Create_Date)
VALUES 				(N'Testing System'		,   5			,'2019-03-05'),
					(N'Testing System1'		,   1			,'2020-03-07'),
                    (N'Testing System2'		,   2			,'2020-03-09'),
                    (N'VTI RK 16'			,   3			,'2020-03-10'),
                    (N'VTI RK 17'			,   4			,'2020-03-28'),
                    (N'VTI RK 18'			,   6			,'2020-04-06'),
                    (N'VTI RK 19'	        ,   7			,'2020-04-07'),
                    (N'VTI RK 20'			,   8			,'2020-04-08'),
                    (N'VTI Railway 10'	  	,   9			,'2020-04-09'),
                    (N'VTI Railway 11'	,   10			,'2020-04-10');

-- Add data GroupAccount
INSERT INTO `GroupAccount`	(  Group_ID	, Account_ID	, Join_Date	 )
VALUES 						(	1		,    1		,'2019-03-05'),
							(	1		,    2		,'2020-03-07'),
							(	3		,    3		,'2020-03-09'),
							(	3		,    4		,'2020-03-10'),
							(	5		,    5		,'2020-03-28'),
							(	1		,    3		,'2020-04-06'),
							(	1		,    7		,'2020-04-07'),
							(	8		,    3		,'2020-04-0department8'),
							(	1		,    9		,'2020-04-09'),
							(	10		,    10		,'2020-04-10');


-- Add data TypeQuestion
INSERT INTO type_question	(TypeName			) 
VALUES 						('Essay'			), 
							('Multiple-Choice'	); 


-- Add data CategoryQuestion
INSERT INTO category_question		(Category_Name	)
VALUES 								('Java'			),
									('ASP.NET'		),
									('ADO.NET'		),
									('SQL'			),
									('Postman'		),
									('Ruby'			),
									('Python'		),
									('C++'			),
									('C Sharp'		),
									('PHP'			);
													
-- Add data Question
INSERT INTO Question	(Content			, CategoryID, TypeID		, CreatorID	, CreateDate )
VALUES 					(N'Câu hỏi về Java ',	1		,   '1'			,   '2'		,'2020-04-05'),
						(N'Câu Hỏi về PHP'	,	10		,   '2'			,   '2'		,'2020-04-05'),
						(N'Hỏi về C#'		,	9		,   '2'			,   '3'		,'2020-04-06'),
						(N'Hỏi về Ruby'		,	6		,   '1'			,   '4'		,'2020-04-06'),
						(N'Hỏi về Postman'	,	5		,   '1'			,   '5'		,'2020-04-06'),
						(N'Hỏi về ADO.NET'	,	3		,   '2'			,   '6'		,'2020-04-06'),
						(N'Hỏi về ASP.NET'	,	2		,   '1'			,   '7'		,'2020-04-06'),
						(N'Hỏi về C++'		,	8		,   '1'			,   '8'		,'2020-04-07'),
						(N'Hỏi về SQL'		,	4		,   '2'			,   '9'		,'2020-04-07'),
						(N'Hỏi về Python'	,	7		,   '1'			,   '10'	,'2020-04-07');

-- Add data Answers
INSERT INTO Answer	(  Content		, QuestionID	, isCorrect	)
VALUES 				(N'Trả lời 01'	,   1			,	0		),
					(N'Trả lời 02'	,   1			,	1		),
                    (N'Trả lời 03'	,   1			,	0		),
                    (N'Trả lời 04'	,   1			,	1		),
                    (N'Trả lời 05'	,   2			,	1		),
                    (N'Trả lời 06'	,   3			,	1		),
                    (N'Trả lời 07'	,   4			,	0		),
                    (N'Trả lời 08'	,   8			,	0		),
                    (N'Trả lời 09'	,   9			,	1		),
                    (N'Trả lời 10'	,   10			,	1		);
	
-- Add data Exam
INSERT INTO Exam	(`Code`			, Title					, CategoryID	, Duration	, CreatorID		, CreateDate )
VALUES 				('VTIQ001'		, N'Đề thi C#'			,	1			,	60		,   '5'			,'2019-04-05'),
					('VTIQ002'		, N'Đề thi PHP'			,	10			,	60		,   '2'			,'2019-04-05'),
                    ('VTIQ003'		, N'Đề thi C++'			,	9			,	120		,   '2'			,'2019-04-07'),
                    ('VTIQ004'		, N'Đề thi Java'		,	6			,	60		,   '3'			,'2020-04-08'),
                    ('VTIQ005'		, N'Đề thi Ruby'		,	5			,	120		,   '4'			,'2020-04-10'),
                    ('VTIQ006'		, N'Đề thi Postman'		,	3			,	60		,   '6'			,'2020-04-05'),
                    ('VTIQ007'		, N'Đề thi SQL'			,	2			,	60		,   '7'			,'2020-04-05'),
                    ('VTIQ008'		, N'Đề thi Python'		,	8			,	60		,   '8'			,'2020-04-07'),
                    ('VTIQ009'		, N'Đề thi ADO.NET'		,	4			,	90		,   '9'			,'2020-04-07'),
                    ('VTIQ010'		, N'Đề thi ASP.NET'		,	7			,	90		,   '10'		,'2020-04-08');
                    
                    
-- Add data ExamQuestion
INSERT INTO ExamQuestion(ExamID	, QuestionID	) 
VALUES 					(	1	,		5		),
						(	2	,		10		), 
						(	3	,		4		), 
						(	4	,		3		), 
						(	5	,		7		), 
						(	6	,		10		), 
						(	7	,		2		), 
						(	8	,		10		), 
						(	9	,		9		), 
						(	10	,		8		); 
