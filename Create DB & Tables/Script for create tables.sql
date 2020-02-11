CREATE TABLE PublStatistics (
  idPublStatistics INTEGER  NOT NULL   IDENTITY ,
  TotalNum INTEGER    ,
  publYear SMALLINT    ,
  TimeCreated DATETIME      ,
PRIMARY KEY(idPublStatistics));

CREATE TABLE Level (
  idLevel INTEGER  NOT NULL   IDENTITY ,
  Description VARCHAR(255)      ,
PRIMARY KEY(idLevel));


CREATE TABLE Member_type (
  idMember_type INTEGER  NOT NULL   IDENTITY ,
  Description VARCHAR(255)  NOT NULL    ,
PRIMARY KEY(idMember_type));


CREATE TABLE Project_status (
  idProject_status INTEGER  NOT NULL   IDENTITY ,
  Description VARCHAR(255)      ,
PRIMARY KEY(idProject_status));


CREATE TABLE Current_Project (
  idCurrent_Project INTEGER  NOT NULL   IDENTITY ,
  TotalProj INTEGER    ,
  TotalBudget INTEGER    ,
  CPDate DATE    ,
  TimeCreated TIME      ,
PRIMARY KEY(idCurrent_Project));


CREATE TABLE Category (
  idCategory INTEGER  NOT NULL   IDENTITY ,
  Description VARCHAR(255)      ,
PRIMARY KEY(idCategory));


CREATE TABLE Course_type (
  idCourse_type INTEGER  NOT NULL   IDENTITY ,
  Description VARCHAR(255)  NOT NULL    ,
PRIMARY KEY(idCourse_type));


CREATE TABLE Courses (
  idCourses INTEGER  NOT NULL   IDENTITY ,
  Course_type_idCourse_type INTEGER  NOT NULL  ,
  Title VARCHAR(255)  NOT NULL  ,
  Semester VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idCourses)  ,
  FOREIGN KEY(Course_type_idCourse_type)
    REFERENCES Course_type(idCourse_type));


CREATE TABLE Publications (
  idPublications INTEGER  NOT NULL   IDENTITY ,
  Category_idCategory INTEGER  NOT NULL  ,
  Subject VARCHAR(255)  NOT NULL  ,
  PYear SMALLINT  NOT NULL  ,
  Pname VARCHAR(255)      ,
PRIMARY KEY(idPublications)  ,
  FOREIGN KEY(Category_idCategory)
    REFERENCES Category(idCategory));


CREATE TABLE Members (
  idMembers INTEGER  NOT NULL   IDENTITY ,
  Level_idLevel INTEGER    ,
  Member_type_idMember_type INTEGER  NOT NULL  ,
  Sname VARCHAR(255)  NOT NULL  ,
  Name VARCHAR(255)  NOT NULL  ,
  Fname VARCHAR(255)    ,
  webpage VARCHAR(320)    ,
  email VARCHAR(255)    ,
  tel VARCHAR(20)    ,
  ShortCV TEXT      ,
PRIMARY KEY(idMembers)    ,
  FOREIGN KEY(Member_type_idMember_type)
    REFERENCES Member_type(idMember_type),
  FOREIGN KEY(Level_idLevel)
    REFERENCES Level(idLevel));


CREATE TABLE Members_has_Courses (
  Members_idMembers INTEGER  NOT NULL  ,
  Courses_idCourses INTEGER  NOT NULL    ,
PRIMARY KEY(Members_idMembers, Courses_idCourses)    ,
  FOREIGN KEY(Members_idMembers)
    REFERENCES Members(idMembers),
  FOREIGN KEY(Courses_idCourses)
    REFERENCES Courses(idCourses));


CREATE TABLE Members_has_Publications (
  Members_idMembers INTEGER  NOT NULL  ,
  Publications_idPublications INTEGER  NOT NULL    ,
PRIMARY KEY(Members_idMembers, Publications_idPublications)    ,
  FOREIGN KEY(Members_idMembers)
    REFERENCES Members(idMembers),
  FOREIGN KEY(Publications_idPublications)
    REFERENCES Publications(idPublications));


CREATE TABLE Announcements (
  idAnnouncements INTEGER  NOT NULL   IDENTITY ,
  Members_idMembers INTEGER  NOT NULL  ,
  Text TEXT  NOT NULL  ,
  Date DATE  NOT NULL    ,
PRIMARY KEY(idAnnouncements)  ,
  FOREIGN KEY(Members_idMembers)
    REFERENCES Members(idMembers));


CREATE TABLE Projects (
  idProjects INTEGER  NOT NULL   IDENTITY ,
  Members_idMembers INTEGER  NOT NULL  ,
  Project_status_idProject_status INTEGER  NOT NULL  ,
  Code VARCHAR(45)  NOT NULL  ,
  Title VARCHAR(255)    ,
  Financing VARCHAR(255)    ,
  Budget DECIMAL    ,
  Startdate DATE    ,
  Enddate DATE      ,
PRIMARY KEY(idProjects)    ,
  FOREIGN KEY(Project_status_idProject_status)
    REFERENCES Project_status(idProject_status),
  FOREIGN KEY(Members_idMembers)
    REFERENCES Members(idMembers));
