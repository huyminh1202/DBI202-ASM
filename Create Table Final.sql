
CREATE TABLE Student (
	StudentID varchar(10) PRIMARY KEY,
	StudentName nvarchar(30) NOT NULL,
	DoB date NOT NULL,
	Address nvarchar(30) NOT NULL,
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
	LectureName nvarchar(30) NOT NULL,
	Email varchar(30) NOT NULL,
	PhoneNumber varchar(10) NOT NULL
 )

 CREATE TABLE Assessment (
	Category varchar(20) PRIMARY KEY NOT NULL,
	SubjectID int FOREIGN KEY REFERENCES Subject(SubjectID),
	[Type] nvarchar(50) not null CHECK ([Type] in ('quiz','on-going','pratical exam','final exam')),
	[Weight] float NOT NULL,
	[Completion Criteria] varchar(10) NOT NULL,
	Duration varchar (30) NOT NULL,
	LO varchar(20),
	[Question Type] varchar(200) NOT NULL,
	[Number of Question] int ,
	[Knowledge and Skill] varchar(200),
	[Grading Guide] varchar (150),
	[Note] varchar (200)
	)


CREATE TABLE [Group] (
	GroupID varchar(10) PRIMARY KEY NOT NULL,
	LectureID int FOREIGN KEY REFERENCES Lecture(LectureID),
	SubjectID int FOREIGN KEY REFERENCES Subject(SubjectID),
	Semester varchar(30)  NOT NULL
)



CREATE TABLE [Result of Semester] (
	StudentID varchar(10) FOREIGN KEY REFERENCES Student(StudentID),
	SubjectID int FOREIGN KEY REFERENCES Subject(SubjectID),
	Category varchar(20) FOREIGN KEY REFERENCES Assessment(Category),
	[Grade Item] varchar(20) NOT NULL,
	[Weight] float NOT NULL,
	[Value] float NOT NULL,
	Comment varchar(20)
 
)


