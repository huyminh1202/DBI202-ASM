-- Insert Student

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE160674', N'Nguyễn Huy Minh', 1, '2002-02-01', N'Hà Nội');

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE162987', N'Lê Huy Long', 1, '2002-05-12', N'Nghệ An');

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE169965', N'Bùi Minh Ngọc', 0, '2002-12-31', N'Hải Phòng');

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE165437', N'Trần Hoàng Hải Trường', 1, '2002-07-12', N'Hà Nội');

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE170432', N'Hoàng Văn An', 1, '2003-04-15', N'Ninh Bình');

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE170608', N'Nguyễn Huyền Trang', 0, '2003-10-15', N'Hà Nội');

INSERT INTO Student (StudentID, StudentName, Gender, DoB, Address )
VALUES ('HE174488', N'Nguyễn Thị Minh Châu', 0, '2003-07-31', N'Hà Nội');



-- Insert Subject

INSERT INTO Subject (SubjectID, SubjectName) 
VALUES ('DBI202', 'Introduction to Databases')

INSERT INTO Subject (SubjectID, SubjectName) 
VALUES ('JPD113', 'Elementary Japanese')

INSERT INTO Subject (SubjectID, SubjectName) 
VALUES ('MAD101', 'Discrete mathematics')

INSERT INTO Subject (SubjectID, SubjectName) 
VALUES ('PRO192', 'Object-Oriented Programming')

INSERT INTO Subject (SubjectID, SubjectName) 
VALUES ('CSD201', 'Data Structures and Algorithms')



-- Insert Lecture

INSERT INTO Lecture (LectureID, LectureName, Email, PhoneNumber)
VALUES (1, N'Ngô Tùng Sơn','sonnt69@fe.edu.vn', '0999999999')

INSERT INTO Lecture (LectureID, LectureName, Email, PhoneNumber)
VALUES (2, N'Phan Đăng Cầu','caupd@fe.edu.vn', '088888888')

INSERT INTO Lecture (LectureID, LectureName, Email, PhoneNumber)
VALUES (3, N'Lê Thị Kim Dung','dungltk4@fe.edu.vn', '0777777777')

INSERT INTO Lecture (LectureID, LectureName, Email, PhoneNumber)
VALUES (4, N'Phan Thị Hà','HaPT27@fe.edu.vn', '0666666666')

INSERT INTO Lecture (LectureID, LectureName, Email, PhoneNumber)
VALUES (5, N'Vũ Khắc Kỷ','KyVK2@fe.edu.vn', '0555555555')

-- INSERT GROUP

INSERT INTO [Group] ([GroupID], [Group Name])
VALUES (1, 'SE1647')


INSERT INTO [Group] ([GroupID], [Group Name])
VALUES (2, 'SE1748')


-- INSERT Subject_Semester

INSERT INTO Subject_Semester (SSID, SubjectID, Semester, StartDate, EndDate)
VALUES ('SU22CSD201', 'CSD201', 'SU22', '2022-05-10', '2022-07-21')


INSERT INTO Subject_Semester (SSID, SubjectID, Semester, StartDate, EndDate)
VALUES ('SU22DBI202', 'DBI202', 'SU22', '2022-05-11', '2022-07-20')



INSERT INTO Subject_Semester (SSID, SubjectID, Semester, StartDate, EndDate)
VALUES ('SU22JPD113', 'JPD113', 'SU22', '2022-05-09', '2022-07-22')


INSERT INTO Subject_Semester (SSID, SubjectID, Semester, StartDate, EndDate)
VALUES ('SP22MAD101', 'MAD101', 'SP22', '2022-01-05', '2022-03-25')


INSERT INTO Subject_Semester (SSID, SubjectID, Semester, StartDate, EndDate)
VALUES ('SP22PRO192', 'PRO192', 'SP22', '2022-01-04', '2022-03-24')


-- INSERT ASSESSMENT
	--CSD
INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (1, 'SU22CSD201', 'Assignment 1', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (2, 'SU22CSD201', 'Assignment 2', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (3, 'SU22CSD201', 'Progresstest 1', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (4, 'SU22CSD201', 'Progresstest 2', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (5, 'SU22CSD201', 'Practical Exam', 0.3)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (6, 'SU22CSD201', 'Final Exam', 0.3)
	

	---DBI
INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (7, 'SU22DBI202', 'Lab 1', 0.02)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (8, 'SU22DBI202', 'Lab 2', 0.02)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (9, 'SU22DBI202', 'Lab 3', 0.02)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (10, 'SU22DBI202', 'Lab 4', 0.02)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (11, 'SU22DBI202', 'Lab 5', 0.02)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (12, 'SU22DBI202', 'Progress Test 1', 0.05)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (13, 'SU22DBI202', 'Progress Test 2', 0.05)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (14, 'SU22DBI202', 'Assignment', 0.2)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (15, 'SU22DBI202', 'Practical Exam', 0.3)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (16, 'SU22DBI202', 'Final Exam', 0.3)

	-- JPD
INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (17, 'SU22JPD113', 'Participation', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (18, 'SU22JPD113', 'Progresstest 1', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (19, 'SU22JPD113', 'Progresstest 2', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (20, 'SU22JPD113', 'Mid-term test', 0.3)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (21, 'SU22JPD113', 'Final Exam', 0.4)

	-- MAD
INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (22, 'SP22MAD101', 'Assignment 1', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (23, 'SP22MAD101', 'Assignment 2', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (24, 'SP22MAD101', 'Assignment 3', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (25, 'SP22MAD101', 'Progresstest 1', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (26, 'SP22MAD101', 'Progresstest 2', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (27, 'SP22MAD101', 'Progresstest 3', 0.1)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (28, 'SP22MAD101', 'Final Exam', 0.4)
	
	-- PRO
	
INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (29, 'SP22PRO192', 'Lab 1', 0.017)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (30, 'SP22PRO192', 'Lab 2', 0.017)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (31, 'SP22PRO192', 'Lab 3', 0.017)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (32, 'SP22PRO192', 'Lab 4', 0.017)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (33, 'SP22PRO192', 'Lab 5', 0.017)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (34, 'SP22PRO192', 'Lab 6', 0.017)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (35, 'SP22PRO192', 'Progress Test 1', 0.05)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (36, 'SP22PRO192', 'Progress Test 2', 0.05)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (37, 'SP22PRO192', 'Assignment', 0.2)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (38, 'SP22PRO192', 'Practical Exam', 0.3)

INSERT INTO Assessment (AssessmentID, SSID, Category, Weight)
VALUES (39, 'SP22PRO192', 'Final Exam', 0.3)