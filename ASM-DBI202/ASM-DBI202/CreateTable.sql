create table Student (
	StudentID int primary key,
	StudentName varchar(30) NOT NULL,
	DoB date NOT NULL,
	Address varchar(30) NOT NULL,
	PhoneNumber varchar (10)

 )

 Create table Subject (
	SubjectID int primary key,
	SubjectCode varchar(10) NOT NULL,
	SubjectName varchar(30) NOT NULL,
	StartDate date, 
	EndDate date 
 )


 Create table Lecture (
	LectureID int primary key,
	LectureName varchar(30) NOT NULL,
	Email varchar(30) NOT NULL,
	PhoneNumber varchar(10)
 )

 Create table Assessment (
	SubjectID int foreign key references Subject(SubjectID),
	AssessmentID int primary key,
	Category varchar(30) NOT NULL,
	[Type] varchar(10) NOT NULL,
	part int NOT NULL,
	[Weight] varchar(10) NOT NULL,
	[Completion Criteria] varchar(10) NOT NULL,
	Duration varchar (10) NOT NULL,
	LQ varchar(20),
	[Question Type] varchar(200) NOT NULL,
	[No Question] varchar (10),
	[Knowledge and Skill] varchar(200),
	[Note] varchar (200)
	)

	Create table Semester (
		SemesterID int primary key,
		SemesterName varchar(20) NOT NULL
	)

Create table [Group] (
	GroupID int primary key,
	GroupName varchar(30) NOT NULL,
	LectureID int foreign key references Lecture(LectureID),
	SubjectID int foreign key references Subject(SubjectID),
	AssessmentID int foreign key references Assessment(AssessmentID),
	SemesterID int foreign key references Semester(SemesterID)
)

