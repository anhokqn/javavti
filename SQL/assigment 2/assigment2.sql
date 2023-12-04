create database assigment2 ;
use assigment2;

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

-- date table 2

select * from position ;

INSERT INTO `Position` (position_name) VALUES
    ('BA'),
    ('PO'),
    ('TESTER'),
    ('PM'),
    ('Developer');

-- data table 3

select* from account ;

INSERT INTO `Account` (email, user_name, full_name, department_id, position_id, create_date) VALUES
    ('email1@example.com', 'user1', 'Full Name 1', 1, 1, '2023-12-01'),
    ('email2@example.com', 'user2', 'Full Name 2', 2, 2, '2023-12-02'),
    ('email3@example.com', 'user3', 'Full Name 3', 3, 3, '2023-12-03'),
    ('email4@example.com', 'user4', 'Full Name 4', 1, 4, '2023-12-04'),
    ('email5@example.com', 'user5', 'Full Name 5', 2, 1, '2023-12-05');

-- data table 4 

select * from `group` ;

INSERT INTO `group` (group_name, creator_id, create_date) VALUES
    ('Group 1', 1, '2023-12-01'),
    ('Group 2', 2, '2023-12-02'),
    ('Group 3', 3, '2023-12-03'),
    ('Group 4', 4, '2023-12-04'),
    ('Group 5', 5, '2023-12-05');
    
-- data table 5
SELECT * FROM `groupaccount`;

INSERT INTO `GroupAccount` (group_id, account_id, join_date) VALUES
    (1, 1, '2023-12-01'),
    (1, 2, '2023-12-01'),
    (2, 2, '2023-12-02'),
    (3, 3, '2023-12-03'),
    (4, 4, '2023-12-04');

-- data table 6
SELECT * FROM `typequestion`;

INSERT INTO `TypeQuestion` (type_name) VALUES
    ('Essay'),
    ('Multiple-Choice'),
    ('True/False'),
    ('Fill-in-the-Blank'),
    ('Matching');

-- data table 7
SELECT * FROM `categoryquestion`;

INSERT INTO `CategoryQuestion` (category_name) VALUES
    ('Category 1'),
    ('Category 2'),
    ('Category 3'),
    ('Category 4'),
    ('Category 5');

-- data table 8
SELECT * FROM `question`;

INSERT INTO `Question` (content, category_id, type_id, creator_id, create_date) VALUES
    ('Question 1', 1, 1, 1, '2023-12-01'),
    ('Question 2', 2, 2, 2, '2023-12-02'),
    ('Question 3', 3, 1, 3, '2023-12-03'),
    ('Question 4', 4, 2, 4, '2023-12-04'),
    ('Question 5', 5, 1, 5, '2023-12-05');

-- data table 9
SELECT * FROM `answer`;

INSERT INTO `Answer` (content, question_id, is_correct) VALUES
    ('Answer 1', 1, true),
    ('Answer 2', 1, false),
    ('Answer 3', 2, true),
    ('Answer 4', 3, false),
    ('Answer 5', 3, true);

-- data table 10
SELECT * FROM `exam`;

INSERT INTO `Exam` (code, title, category_id, duration, creator_id, create_date) VALUES
    ('Exam 1', 'Title 1', 1, 60, 1, '2023-12-01'),
    ('Exam 2', 'Title 2', 2, 90, 2, '2023-12-02'),
    ('Exam 3', 'Title 3', 3, 120, 3, '2023-12-03'),
    ('Exam 4', 'Title 4', 4, 60, 4, '2023-12-04'),
    ('Exam 5', 'Title 5', 5, 90, 5, '2023-12-05');

-- data table 11
SELECT * FROM `examquestion`;

INSERT INTO `ExamQuestion` (exam_id, question_id) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5);
