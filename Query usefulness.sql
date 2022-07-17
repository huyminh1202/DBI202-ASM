
-- A query that uses ORDER BY

SELECT * FROM Student s
ORDER BY Year(s.dob)

-- A query that uses INNER JOINS

SELECT s.StudentID, s.StudentName, g.[Group Name], l.LectureName, sub.SubjectName
FROM	Student s INNER JOIN [Group_Student] gs ON s.StudentID = gs.StudentID
				  INNER JOIN [GROUP] g			ON gs.GroupID = g.GroupID 
				  INNER JOIN [Group_Lecture] gl ON g.GroupID = gl.GroupID
				  INNER JOIN [Lecture] l		ON gl.LectureID = l.LectureID
				  INNER JOIN [Lecture_Subject] ls ON l.LectureID = ls.LectureID
				  INNER JOIN [Subject] sub		ON ls.SubjectID = sub.SubjectID	
WHERE s.StudentID = 'HE160674';
 

 -- A query that uses aggregate functions

SELECT rs.StudentID, a.SSID, SUM(rs.Score * a.[Weight]) AS [AVG]
FROM Assessment a INNER JOIN [Result Of Semester] rs ON a.AssessmentID = rs.AssessmentID
WHERE rs.StudentID = 'HE160674'
GROUP BY rs.StudentID, a.SSID
ORDER BY [AVG]

-- A query that uses the GROUP BY and HAVING clauses


SELECT  rs.StudentID, a.SSID, SUM(rs.Score * a.[Weight]) AS [AVG]
FROM Assessment a INNER JOIN [Result Of Semester] rs ON a.AssessmentID = rs.AssessmentID
WHERE rs.StudentID = 'HE160674'
GROUP BY rs.StudentID, a.SSID


-- A query check the scoreboard of each subject
SELECT a.Category AS [GRADE ITEM], a.Weight AS [WEIGHT], rs.Score AS [VALUE]
FROM [Result Of Semester] rs JOIN Assessment a ON rs.AssessmentID = a.AssessmentID 
WHERE rs.StudentID = 'HE160674' AND a.SSID = 'SU22CSD201'


