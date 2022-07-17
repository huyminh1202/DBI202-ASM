
CREATE TABLE Student (
	StudentID varchar(10) PRIMARY KEY,
	StudentName nvarchar(50) NOT NULL,
	Gender BIT,
	DoB date,
	Address nvarchar(30)
 )

 CREATE TABLE Subject (
	SubjectID varchar(10) PRIMARY KEY,
	SubjectName nvarchar(30) NOT NULL,
 )

 CREATE TABLE Subject_Semester (
	SSID varchar(20) PRIMARY KEY,
	SubjectID varchar(10) FOREIGN KEY REFERENCES [Subject](SubjectID),
	Semester varchar(20),
	StartDate DATE,
	EndDate DATE
)


 CREATE TABLE Assessment(
	AssessmentID varchar(20) PRIMARY KEY,
	SSID varchar(20)  FOREIGN KEY REFERENCES [Subject_Semester](SSID),
	[Category] nvarchar(150),
	[Weight] float,
)

CREATE TABLE Lecture (
	LectureID int PRIMARY KEY,
	LectureName nvarchar(30) NOT NULL,
	Email varchar(30) NOT NULL,
	PhoneNumber varchar(10) NOT NULL
 )


CREATE TABLE [Group] (
	GroupID int PRIMARY KEY,
	[Group Name] varchar(20)
	
)

CREATE TABLE [Group_Student] (
	GroupID int FOREIGN KEY REFERENCES  [Group](GroupID),
	StudentID varchar(10) FOREIGN KEY REFERENCES [Student] (StudentID)
)

CREATE TABLE [Group_Lecture] (
	GroupID int FOREIGN KEY REFERENCES  [Group](GroupID),
	LectureID int FOREIGN KEY REFERENCES [Lecture] (LectureID)
)

CREATE TABLE [Group_Subject](
	GroupID int FOREIGN KEY REFERENCES  [Group](GroupID),
	SubjectID varchar(10) FOREIGN KEY REFERENCES  [Subject](SubjectID)
)

CREATE TABLE [Lecture_Subject] (
	LectureID int FOREIGN KEY REFERENCES [Lecture] (LectureID),
	SubjectID varchar(10) FOREIGN KEY REFERENCES [Subject](SubjectID)
)
 
CREATE TABLE [Result Of Semester] (
	StudentID varchar(10) FOREIGN KEY REFERENCES [Student] (StudentID),
	AssessmentID varchar(20) FOREIGN KEY REFERENCES Assessment (AssessmentID),
	[Score] float
)


