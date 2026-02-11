CREATE DATABASE IF NOT EXISTS normal;
USE normal;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(50)
);
CREATE TABLE Club (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(50),
    ClubRoom VARCHAR(20),
    ClubMentor VARCHAR(50)
);
CREATE TABLE Membership (
    MembershipID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    ClubID INT,
    JoinDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);
INSERT INTO Student (StudentID, StudentName, Email) VALUES
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');
INSERT INTO Club (ClubID, ClubName, ClubRoom, ClubMentor) VALUES
(1, 'Music Club', 'R101', 'Mr. Raman'),
(2, 'Sports Club', 'R202', 'Ms. Sita'),
(3, 'Drama Club', 'R303', 'Mr. Kiran'),
(4, 'Coding Club', 'Lab1', 'Mr. Anil');
INSERT INTO Membership (StudentID, ClubID, JoinDate) VALUES
(1, 1, '2024-01-10'),
(1, 2, '2024-01-12'),
(2, 2, '2024-01-15'),
(4, 3, '2024-01-20'),
(5, 1, '2024-01-18'),
(2, 3, '2024-01-22'),
(6, 2, '2024-01-25'),
(3, 4, '2024-01-27'),
(7, 4, '2024-01-28');

