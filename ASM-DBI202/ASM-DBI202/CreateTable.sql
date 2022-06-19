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

Create table [Group] (
	GroupID int primary key,
	GroupName varchar(30) NOT NULL,
	LectureID int foreign key references Lecture(LectureID),
	SubjectID int foreign key references Subject(SubjectID),
	AssessmentID int
)