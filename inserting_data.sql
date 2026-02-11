-- Insert a new student
INSERT INTO Student (StudentID, StudentName, Email) 
VALUES (8, 'Kiran', 'kiran@email.com');

-- Insert a new club
INSERT INTO Club (ClubID, ClubName, ClubRoom, ClubMentor) 
VALUES (5, 'Art Club', 'R404', 'Ms. Maya');

-- Display all students
SELECT * FROM Student;

-- Display all clubs
SELECT * FROM Club;
