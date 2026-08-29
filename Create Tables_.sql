/******************************************************************************
Project     : Digilians Learning Management System (LMS)
Description : Complete Database Schema
Author      : Digilians
Database    : Digilians
******************************************************************************/

SET NOCOUNT ON;
GO

/******************************************************************************
1. Create Database (If It Does Not Exist)
******************************************************************************/

IF DB_ID('Digilians') IS NULL
BEGIN
    CREATE DATABASE Digilians;
END
GO

USE Digilians;
GO

/******************************************************************************
2. Remove Existing Objects
This section allows the script to be executed multiple times safely.
******************************************************************************/

DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Sessions;
DROP TABLE IF EXISTS Grades;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS CourseOfferings;
DROP TABLE IF EXISTS Trainees;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Instructors;
DROP TABLE IF EXISTS Labs;
GO

/******************************************************************************
Table: Labs
Purpose:
Stores all training laboratories where courses are delivered.
******************************************************************************/

CREATE TABLE Labs
(
    LabID INT IDENTITY(1,1) PRIMARY KEY,

    LabCode NVARCHAR(50) NOT NULL UNIQUE,

    Building NVARCHAR(100) NULL,

    Capacity INT NULL
);
GO

/******************************************************************************
Table: Instructors
Purpose:
Stores instructor master information.
******************************************************************************/

CREATE TABLE Instructors
(
    InstructorID INT IDENTITY(1,1) PRIMARY KEY,

    InstructorName NVARCHAR(150) NOT NULL,

    Email NVARCHAR(150) NULL,

    Phone VARCHAR(20) NULL,

    Specialization NVARCHAR(100) NULL
);
GO

/******************************************************************************
Table: Courses
Purpose:
Stores all available training courses.
******************************************************************************/

CREATE TABLE Courses
(
    CourseID INT IDENTITY(1,1) PRIMARY KEY,

    CourseName NVARCHAR(100) NOT NULL,

    DurationHours INT NULL,

    Description NVARCHAR(MAX) NULL
);
GO

/******************************************************************************
Table: Trainees
Purpose:
Stores trainee profile and academic information.
******************************************************************************/

CREATE TABLE Trainees
(
    TraineeID INT IDENTITY(1,1) PRIMARY KEY,

    EnglishName NVARCHAR(150) NOT NULL,

    ArabicName NVARCHAR(200) NOT NULL,

    Email NVARCHAR(150) UNIQUE NULL,

    Phone VARCHAR(20) NULL,

    Gender CHAR(1) NULL
        CONSTRAINT CK_Trainees_Gender
        CHECK (Gender IN ('M','F')),

    University NVARCHAR(100) NULL,

    Faculty NVARCHAR(100) NULL,

    AcademicYear TINYINT NULL
        CONSTRAINT CK_Trainees_AcademicYear
        CHECK (AcademicYear BETWEEN 1 AND 6),

    LabID INT NOT NULL,

    IsActive BIT NOT NULL
        CONSTRAINT DF_Trainees_IsActive
        DEFAULT (1),

    CONSTRAINT FK_Trainees_Labs
        FOREIGN KEY (LabID)
        REFERENCES Labs(LabID)
);
GO

/******************************************************************************
Table: CourseOfferings
Purpose:
Represents a scheduled delivery of a course by a specific instructor
inside a specific laboratory.
******************************************************************************/

CREATE TABLE CourseOfferings
(
    OfferingID INT IDENTITY(1,1) PRIMARY KEY,

    CourseID INT NOT NULL,

    InstructorID INT NOT NULL,

    LabID INT NOT NULL,

    StartDate DATE NULL,

    EndDate DATE NULL,

    CONSTRAINT FK_CourseOfferings_Courses
        FOREIGN KEY (CourseID)
        REFERENCES Courses(CourseID),

    CONSTRAINT FK_CourseOfferings_Instructors
        FOREIGN KEY (InstructorID)
        REFERENCES Instructors(InstructorID),

    CONSTRAINT FK_CourseOfferings_Labs
        FOREIGN KEY (LabID)
        REFERENCES Labs(LabID)
);
GO

/******************************************************************************
Table: Enrollments
Purpose:
Stores trainee registrations for course offerings.
******************************************************************************/

CREATE TABLE Enrollments
(
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,

    TraineeID INT NOT NULL,

    OfferingID INT NOT NULL,

    EnrollmentDate DATE NOT NULL
        CONSTRAINT DF_Enrollments_EnrollmentDate
        DEFAULT (CAST(GETDATE() AS DATE)),

    CONSTRAINT FK_Enrollments_Trainees
        FOREIGN KEY (TraineeID)
        REFERENCES Trainees(TraineeID),

    CONSTRAINT FK_Enrollments_CourseOfferings
        FOREIGN KEY (OfferingID)
        REFERENCES CourseOfferings(OfferingID)
);
GO

/******************************************************************************
Table: Grades
Purpose:
Stores trainee assessment results.
Each enrollment can have only one grading record.
******************************************************************************/

CREATE TABLE Grades
(
    GradeID INT IDENTITY(1,1) PRIMARY KEY,

    EnrollmentID INT NOT NULL UNIQUE,

    Attendance DECIMAL(5,2) NULL,

    Assignment DECIMAL(5,2) NULL,

    Project DECIMAL(5,2) NULL,

    MidExam DECIMAL(5,2) NULL,

    FinalExam DECIMAL(5,2) NULL,

    Total DECIMAL(5,2) NULL,

    GradeLetter CHAR(2) NULL,

    CONSTRAINT FK_Grades_Enrollments
        FOREIGN KEY (EnrollmentID)
        REFERENCES Enrollments(EnrollmentID)
);
GO

/******************************************************************************
Table: Sessions
Purpose:
Stores every lecture/session delivered for a course offering.
******************************************************************************/

CREATE TABLE Sessions
(
    SessionID INT IDENTITY(1,1) PRIMARY KEY,

    OfferingID INT NOT NULL,

    SessionDate DATE NULL,

    Topic NVARCHAR(200) NULL,

    CONSTRAINT FK_Sessions_CourseOfferings
        FOREIGN KEY (OfferingID)
        REFERENCES CourseOfferings(OfferingID)
);
GO

/******************************************************************************
Table: Attendance
Purpose:
Stores trainee attendance for every training session.
******************************************************************************/

CREATE TABLE Attendance
(
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,

    SessionID INT NOT NULL,

    TraineeID INT NOT NULL,

    Status NVARCHAR(20) NULL
        CONSTRAINT CK_Attendance_Status
        CHECK (Status IN ('Present','Absent','Late')),

    CONSTRAINT FK_Attendance_Sessions
        FOREIGN KEY (SessionID)
        REFERENCES Sessions(SessionID),

    CONSTRAINT FK_Attendance_Trainees
        FOREIGN KEY (TraineeID)
        REFERENCES Trainees(TraineeID)
);
GO