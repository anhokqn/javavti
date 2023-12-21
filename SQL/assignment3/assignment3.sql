create database assigment ;
use assigment;

--  table 1 department 
create table `Department` (
	id bigint not null AUTO_INCREMENT,
    department_name nvarchar(50) not null,
	PRIMARY KEY (id)
);

--  table 2 positon
create table `Position` (
	id bigint not null AUTO_INCREMENT,
    position_name nvarchar(50),
    PRIMARY KEY (id)
);

--  table 3 account
create table `Account` (
	id bigint not null AUTO_INCREMENT,
    email nvarchar(50) not null unique,
    user_name nvarchar(50) not null unique,
    full_name nvarchar(50) not null,
    department_id bigint not null,
    position_id bigint not null,
    create_date date not null ,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES Department(id),
	FOREIGN KEY (position_id) REFERENCES `Position`(id)
);

--  table 4 group
create table `Group` (
	id bigint not null AUTO_INCREMENT,
    group_name 	nvarchar(50) not null,
    creator_id bigint not null,
    create_date date not null ,
    PRIMARY KEY (id),
    foreign key (creator_id) references `Account`(id)
);

-- table 5 groupaccount
create table `GroupAccount` (
	group_id bigint not null,
    account_id bigint not null,
    join_date date not null,
    FOREIGN KEY (group_id) REFERENCES `Group`(id),
	FOREIGN KEY (account_id) REFERENCES `Account`(id)
);

-- table 6 typequestion
create table `TypeQuestion` (
	id bigint not null AUTO_INCREMENT,
    type_name nvarchar(50) not null,
    PRIMARY KEY (id)
);

-- table 7 categoryqyestion
create table `CategoryQuestion` (
	id bigint not null AUTO_INCREMENT,
    category_name nvarchar(50) not null ,
    PRIMARY KEY (id)
);

-- table 8 question
create table `Question` (
	id bigint not null AUTO_INCREMENT,
    content text not null,
    category_id	bigint not null,
    type_id	bigint not null,
    creator_id	bigint not null,
    create_date date not null,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES `CategoryQuestion`(id),
	FOREIGN KEY (type_id) REFERENCES `TypeQuestion`(id),
    FOREIGN KEY (creator_id) REFERENCES `Account`(id)
);

-- table 9 answer
create table `Answer` (
	id bigint not null AUTO_INCREMENT,
    content	text not null,
    question_id bigint not null,
    is_correct boolean not null,
    PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES `Question`(id)
);

-- table 10 exam
create table `Exam` (
	id	bigint not null AUTO_INCREMENT,
    code nvarchar(50) not null,
    title nvarchar(50) not null,
    category_id	bigint not null,
    duration bigint,
    creator_id	bigint not null,
    create_date	date ,
	PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES `CategoryQuestion`(id),
    FOREIGN KEY (creator_id) REFERENCES `Account`(id)
);

-- table 11 examquestion 
create table `ExamQuestion` (
	exam_id	bigint not null,
    question_id	bigint not null,
    FOREIGN KEY (exam_id) REFERENCES `Exam`(id),
    FOREIGN KEY (question_id) REFERENCES `Question`(id)
);

-- data table 1
select * from department ;

INSERT INTO `Department` (id, department_name) VALUES
    (1,'HR'),
    (2, 'Finance'),
    (3, 'IT'),
    (4, 'Marketing'),
    (5, 'Sales');

INSERT INTO `Department` (department_name) VALUES
    ('Research'),
    ('Development'),
    ('Customer Service'),
    ('Production'),
    ('Quality Control'),
    ('Administration'),
    ('Legal'),
    ('Public Relations'),
    ('Human Resources'),
    ('Information Security');
    
    INSERT INTO `Department` (department_name) VALUES
    ('Administration'),
    ('Finance'),
    ('IT Services'),
    ('Marketing'),
    ('Sales'),
    ('Legal'),
    ('Human Resources'),
    ('Public Relations'),
    ('Customer Success'),
    ('Quality Assurance');
    
-- date table 2

select * from position ;

INSERT INTO `Position` (position_name) VALUES
    ('BA'),
    ('PO'),
    ('TESTER'),
    ('PM'),
    ('Developer');

INSERT INTO `Position` (position_name) VALUES
    ('Analyst'),
    ('System Architect'),
    ('Quality Assurance Specialist'),
    ('Project Coordinator'),
    ('Software Engineer'),
    ('Database Administrator'),
    ('Product Manager'),
    ('UI/UX Designer'),
    ('Network Administrator'),
    ('Technical Support Specialist');

-- data table 3

select* from account ;

INSERT INTO `Account` (email, user_name, full_name, department_id, position_id, create_date) VALUES
    ('email1@example.com', 'user1', 'Full Name 1', 1, 1, '2023-12-01'),
    ('email2@example.com', 'user2', 'Full Name 2', 2, 2, '2023-12-02'),
    ('email3@example.com', 'user3', 'Full Name 3', 3, 3, '2023-12-03'),
    ('email4@example.com', 'user4', 'Full Name 4', 1, 4, '2023-12-04'),
    ('email5@example.com', 'user5', 'Full Name 5', 2, 1, '2023-12-05');

INSERT INTO `Account` (email, user_name, full_name, department_id, position_id, create_date) VALUES
    ('email6@example.com', 'user6', 'Full Name 6', 3, 5, '2023-12-06'),
    ('email7@example.com', 'user7', 'Full Name 7', 4, 3, '2023-12-07'),
    ('email8@example.com', 'user8', 'Full Name 8', 2, 2, '2023-12-08'),
    ('email9@example.com', 'user9', 'Full Name 9', 5, 1, '2023-12-09'),
    ('email10@example.com', 'user10', 'Full Name 10', 1, 4, '2023-12-10'),
    ('email11@example.com', 'user11', 'Full Name 11', 4, 5, '2023-12-11'),
    ('email12@example.com', 'user12', 'Full Name 12', 3, 3, '2023-12-12'),
    ('email13@example.com', 'user13', 'Full Name 13', 2, 1, '2023-12-13'),
    ('email14@example.com', 'user14', 'Full Name 14', 5, 2, '2023-12-14'),
    ('email15@example.com', 'user15', 'Full Name 15', 1, 4, '2023-12-15');

-- data table 4 

select * from `group` ;

INSERT INTO `group` (group_name, creator_id, create_date) VALUES
    ('Group 1', 1, '2023-12-01'),
    ('Group 2', 2, '2023-12-02'),
    ('Group 3', 3, '2023-12-03'),
    ('Group 4', 4, '2023-12-04'),
    ('Group 5', 5, '2023-12-05');
    
    INSERT INTO `Group` (group_name, creator_id, create_date) VALUES
    ('Group 6', 6, '2023-12-06'),
    ('Group 7', 7, '2023-12-07'),
    ('Group 8', 8, '2023-12-08'),
    ('Group 9', 9, '2023-12-09'),
    ('Group 10', 10, '2023-12-10'),
    ('Group 11', 11, '2023-12-11'),
    ('Group 12', 12, '2023-12-12'),
    ('Group 13', 13, '2023-12-13'),
    ('Group 14', 14, '2023-12-14'),
    ('Group 15', 15, '2023-12-15');

-- data table 5
SELECT * FROM `groupaccount`;

INSERT INTO `GroupAccount` (group_id, account_id, join_date) VALUES
    (1, 1, '2023-12-01'),
    (1, 2, '2023-12-01'),
    (2, 2, '2023-12-02'),
    (3, 3, '2023-12-03'),
    (4, 4, '2023-12-04');
    
    INSERT INTO `GroupAccount` (group_id, account_id, join_date) VALUES
    (2, 1, '2023-12-05'),
    (3, 2, '2023-12-06'),
    (4, 3, '2023-12-07'),
    (5, 4, '2023-12-08'),
    (1, 5, '2023-12-09'),
    (2, 3, '2023-12-10'),
    (3, 4, '2023-12-11'),
    (4, 5, '2023-12-12'),
    (5, 1, '2023-12-13'),
    (1, 2, '2023-12-14');

-- data table 6
SELECT * FROM `typequestion`;

INSERT INTO `TypeQuestion` (type_name) VALUES
    ('Essay'),
    ('Multiple-Choice'),
    ('True/False'),
    ('Fill-in-the-Blank'),
    ('Matching');
    
    INSERT INTO `TypeQuestion` (type_name) VALUES
    ('Short Answer'),
    ('Code Answer'),
    ('Diagram Answer'),
    ('Quantitative'),
    ('Audio-Visual'),
    ('Ranking'),
    ('Sequential'),
    ('Mathematical'),
    ('Logical Reasoning'),
    ('Projective');

-- data table 7
SELECT * FROM `categoryquestion`;

INSERT INTO `CategoryQuestion` (category_name) VALUES
    ('Category 1'),
    ('Category 2'),
    ('Category 3'),
    ('Category 4'),
    ('Category 5');

INSERT INTO `CategoryQuestion` (category_name) VALUES
    ('Category 6'),
    ('Category 7'),
    ('Category 8'),
    ('Category 9'),
    ('Category 10'),
    ('Category 11'),
    ('Category 12'),
    ('Category 13'),
    ('Category 14'),
    ('Category 15');

-- data table 8
SELECT * FROM `question`;

INSERT INTO `Question` (content, category_id, type_id, creator_id, create_date) VALUES
    ('Question 1', 1, 1, 1, '2023-12-01'),
    ('Question 2', 2, 2, 2, '2023-12-02'),
    ('Question 3', 3, 1, 3, '2023-12-03'),
    ('Question 4', 4, 2, 4, '2023-12-04'),
    ('Question 5', 5, 1, 5, '2023-12-05');

INSERT INTO `Question` (content, category_id, type_id, creator_id, create_date) VALUES
    ('Question 6', 6, 3, 6, '2023-12-06'),
    ('Question 7', 7, 4, 7, '2023-12-07'),
    ('Question 8', 8, 1, 8, '2023-12-08'),
    ('Question 9', 9, 2, 9, '2023-12-09'),
    ('Question 10', 10, 1, 10, '2023-12-10'),
    ('Question 11', 11, 2, 11, '2023-12-11'),
    ('Question 12', 12, 3, 12, '2023-12-12'),
    ('Question 13', 13, 4, 13, '2023-12-13'),
    ('Question 14', 14, 1, 14, '2023-12-14'),
    ('Question 15', 15, 2, 15, '2023-12-15');

-- data table 9
SELECT * FROM `answer`;

INSERT INTO `Answer` (content, question_id, is_correct) VALUES
    ('Answer 1', 1, true),
    ('Answer 2', 1, false),
    ('Answer 3', 2, true),
    ('Answer 4', 3, false),
    ('Answer 5', 3, true);

INSERT INTO `Answer` (content, question_id, is_correct) VALUES
    ('Answer 6', 4, true),
    ('Answer 7', 4, false),
    ('Answer 8', 5, true),
    ('Answer 9', 6, false),
    ('Answer 10', 6, true),
    ('Answer 11', 7, true),
    ('Answer 12', 8, false),
    ('Answer 13', 8, true),
    ('Answer 14', 9, false),
    ('Answer 15', 10, true);

-- data table 10
SELECT * FROM `exam`;

INSERT INTO `Exam` (code, title, category_id, duration, creator_id, create_date) VALUES
    ('Exam 1', 'Title 1', 1, 60, 1, '2023-12-01'),
    ('Exam 2', 'Title 2', 2, 90, 2, '2023-12-02'),
    ('Exam 3', 'Title 3', 3, 120, 3, '2023-12-03'),
    ('Exam 4', 'Title 4', 4, 60, 4, '2023-12-04'),
    ('Exam 5', 'Title 5', 5, 90, 5, '2023-12-05');

INSERT INTO `Exam` (code, title, category_id, duration, creator_id, create_date) VALUES
    ('Exam 6', 'Title 6', 1, 120, 1, '2023-12-06'),
    ('Exam 7', 'Title 7', 2, 90, 2, '2023-12-07'),
    ('Exam 8', 'Title 8', 3, 60, 3, '2023-12-08'),
    ('Exam 9', 'Title 9', 4, 120, 4, '2023-12-09'),
    ('Exam 10', 'Title 10', 5, 90, 5, '2023-12-10'),
    ('Exam 11', 'Title 11', 1, 60, 1, '2023-12-11'),
    ('Exam 12', 'Title 12', 2, 120, 2, '2023-12-12'),
    ('Exam 13', 'Title 13', 3, 90, 3, '2023-12-13'),
    ('Exam 14', 'Title 14', 4, 60, 4, '2023-12-14'),
    ('Exam 15', 'Title 15', 5, 120, 5, '2023-12-15');

-- data table 11
SELECT * FROM `examquestion`;

INSERT INTO `ExamQuestion` (exam_id, question_id) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5);
    
    INSERT INTO `ExamQuestion` (exam_id, question_id) VALUES
    (6, 6),
    (6, 7),
    (7, 8),
    (7, 9),
    (8, 10),
    (8, 11),
    (9, 12),
    (9, 13),
    (10, 14),
    (10, 15);
    
-- question 2 lấy ra các phòng ban 
    
    SELECT * FROM Department;
    
-- question 3
    
SELECT id
FROM Department
WHERE department_name = 'Sales';

-- question 4 

SELECT *
FROM Account
ORDER BY LENGTH(full_name) DESC
LIMIT 1;

-- question 5

SELECT *
FROM Account
WHERE department_id = 3
ORDER BY LENGTH(full_name) DESC
LIMIT 1;

-- question 6

SELECT DISTINCT g.group_name
FROM `Group` g
JOIN `GroupAccount` ga ON g.id = ga.group_id
WHERE ga.join_date < '2019-12-20';

-- question 7

SELECT q.id
FROM `Question` q
JOIN `Answer` a ON q.id = a.question_id
GROUP BY q.id
HAVING COUNT(DISTINCT a.id) >= 4;

-- question 8

SELECT id, code, title, duration, creator_id, create_date
FROM `Exam`
WHERE duration >= 60 AND create_date < '2019-12-20';

-- question 9 

SELECT id, group_name, creator_id, create_date
FROM `Group`
ORDER BY create_date DESC
LIMIT 5;

-- question 10

SELECT COUNT(*) AS employee_count
FROM `Account`
WHERE department_id = 2;

-- question 11

SELECT *
FROM `Account`
WHERE full_name LIKE 'D%o';

-- question 12

SET SQL_SAFE_UPDATES = 0;

DELETE FROM `Exam`
WHERE create_date < '2019-12-20';

-- question 13 

DELETE FROM `Question`
WHERE content LIKE 'câu hỏi%';

-- question 14 

UPDATE `Account`
SET full_name = 'Nguyễn Bá Lộc', email = 'loc.nguyenba@vti.com.vn'
WHERE id = 5;

-- question 15

UPDATE `GroupAccount`
SET group_id = 4
WHERE account_id = 5;



