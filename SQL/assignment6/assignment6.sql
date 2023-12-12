USE training ;
-- question 1
-- Drop the procedure if it exists

-- question 2

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS GetAccountCountPerGroup;

-- Delimiter change is needed to handle semicolons within the procedure
DELIMITER //

-- Create the procedure
CREATE PROCEDURE GetAccountCountPerGroup()
BEGIN
    -- Select group name and count of accounts for each group
    SELECT `Group`.id AS GroupID, `Group`.name AS GroupName, COUNT(GroupMember.account_id) AS AccountCount
    FROM `Group`
    LEFT JOIN GroupMember ON `Group`.id = GroupMember.group_id
    GROUP BY `Group`.id, `Group`.name;
END //

-- Reset the delimiter
DELIMITER ;
-- Call the stored procedure to get the account count per group
CALL GetAccountCountPerGroup();

-- question 3

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS GetQuestionCountPerType;

-- Delimiter change is needed to handle semicolons within the procedure
DELIMITER //

-- Create the procedure
CREATE PROCEDURE GetQuestionCountPerType()
BEGIN
    -- Get the current month and year
    SET @current_month = MONTH(CURDATE());
    SET @current_year = YEAR(CURDATE());

    -- Select type name and count of questions for each type created in the current month
    SELECT
        TypeQuestion.type_name,
        COUNT(Question.id) AS question_count
    FROM
        TypeQuestion
    LEFT JOIN
        Question ON TypeQuestion.id = Question.type_id
    WHERE
        MONTH(Question.create_date) = @current_month
        AND YEAR(Question.create_date) = @current_year
    GROUP BY
        TypeQuestion.id, TypeQuestion.type_name;
END //

-- Reset the delimiter
DELIMITER ;

-- question 4

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS GetMostCommonQuestionType;

-- Delimiter change is needed to handle semicolons within the procedure
DELIMITER //

-- Create the procedure
CREATE PROCEDURE GetMostCommonQuestionType()
BEGIN
    -- Select the type id and count of questions for each type
    SELECT
        TypeQuestion.id AS most_common_type_id,
        COUNT(Question.id) AS question_count
    FROM
        TypeQuestion
    LEFT JOIN
        Question ON TypeQuestion.id = Question.type_id
    GROUP BY
        TypeQuestion.id
    ORDER BY
        question_count DESC
    LIMIT 1;
END //

-- Reset the delimiter
DELIMITER ;

-- question 5

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS GetMostCommonQuestionType;

-- Delimiter change is needed to handle semicolons within the procedure
DELIMITER //

-- Create the procedure
CREATE PROCEDURE GetMostCommonQuestionType()
BEGIN
    -- Select the type id and count of questions for each type
    SELECT
        TypeQuestion.id AS most_common_type_id,
        TypeQuestion.type_name AS most_common_type_name,
        COUNT(Question.id) AS question_count
    FROM
        TypeQuestion
    LEFT JOIN
        Question ON TypeQuestion.id = Question.type_id
    GROUP BY
        TypeQuestion.id
    ORDER BY
        question_count DESC
    LIMIT 1;
END //

-- Reset the delimiter
DELIMITER ;

-- question 6

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS SearchGroupOrUser;

-- Delimiter change is needed to handle semicolons within the procedure
DELIMITER //

-- Create the procedure
CREATE PROCEDURE SearchGroupOrUser(IN search_string VARCHAR(255))
BEGIN
    -- Check if there is a group with a name containing the search string
    SELECT
        id,
        'Group' AS result_type,
        `name` AS result_name
    FROM
        `Group`
    WHERE
        `name` LIKE CONCAT('%', search_string, '%')

    UNION

    -- Check if there is a user with a username containing the search string
    SELECT
        id,
        'User' AS result_type,
        user_name AS result_name
    FROM
        Account
    WHERE
        user_name LIKE CONCAT('%', search_string, '%');
END //

-- Reset the delimiter
DELIMITER ;

-- question 8 

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS GetLongestQuestionByType;

-- Delimiter change is needed to handle semicolons within the procedure
DELIMITER //

-- Create the procedure
CREATE PROCEDURE GetLongestQuestionByType(IN question_type VARCHAR(50))
BEGIN
    DECLARE type_id INT;
    
    -- Get the type ID based on the input question type
    SELECT id INTO type_id FROM TypeQuestion WHERE type_name = question_type LIMIT 1;

    -- Check if the type exists
    IF type_id IS NOT NULL THEN
        -- Get the longest question for the specified type
        SELECT * FROM Question
        WHERE type_id = type_id
        ORDER BY LENGTH(content) DESC
        LIMIT 1;
    ELSE
        SELECT 'Invalid question type' AS result_message;
    END IF;
END //

-- Reset the delimiter
DELIMITER ;

CALL GetLongestQuestionByType('Essay');








