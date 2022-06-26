CREATE TABLE Student (
	StudentID int PRIMARY KEY,
	StudentName varchar(30) NOT NULL,
	DoB date NOT NULL,
	Address varchar(30) NOT NULL,
	PhoneNumber varchar (10)

 )

 CREATE TABLE Subject (
	SubjectID int PRIMARY KEY,
	SubjectCode varchar(10) NOT NULL,
	SubjectName varchar(30) NOT NULL,
	StartDate date, 
	EndDate date 
 )


 CREATE TABLE Lecture (
	LectureID int PRIMARY KEY,
	LectureName varchar(30) NOT NULL,
	Email varchar(30) NOT NULL,
	PhoneNumber varchar(10)
 )

 CREATE TABLE Assessment (
	SubjectID int FOREIGN KEY REFERENCES Subject(SubjectID),
	AssessmentID int PRIMARY KEY,
	Category varchar(20),
	[Type] nvarchar(50) not null CHECK ([type] in ('quiz','on-going','pratical exam','final exam')),
	[Weight] float NOT NULL,
	[Completion Criteria] varchar(10) NOT NULL,
	Duration varchar (10) NOT NULL,
	LO varchar(20),
	[Question Type] varchar(200) NOT NULL,
	[No Question] int,
	[Knowledge and Skill] varchar(200),
	[Note] varchar (200)
	)

CREATE TABLE Semester (
	SemesterID int PRIMARY KEY,
	[Semester Name] varchar(10) NOT NULL
)

CREATE TABLE [Group] (
	GroupID int PRIMARY KEY,
	GroupName varchar(30) NOT NULL,
	LectureID int FOREIGN KEY REFERENCES Lecture(LectureID),
	SubjectID int FOREIGN KEY REFERENCES Subject(SubjectID),
	AssessmentID int FOREIGN KEY REFERENCES Assessment(AssessmentID),
	SemesterID int FOREIGN KEY REFERENCES Semester(SemesterID)
)


CREATE TABLE [Result of Semester] (
	AssessmentID int FOREIGN KEY REFERENCES Assessment(AssessmentID),
	StudentID int FOREIGN KEY REFERENCES Student(StudentID),
	SubjectID int FOREIGN KEY REFERENCES Subject(SubjectID),
	Score int NOT NULL
)

CREATE TABLE [Details of Result] (
	StudentID int FOREIGN KEY REFERENCES Student(StudentID),
	Asm1 float,
	Asm2 float,
	ProgressTest1 float,
	ProgressTest2 float,
	ProgressTest3 float,
	PracticalExam float,
	FinalExam float
)
