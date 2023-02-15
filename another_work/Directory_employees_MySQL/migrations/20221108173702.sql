-- create "departments" table
CREATE TABLE `departments` (`dept_no` char(4) NOT NULL, `dept_name` varchar(40) NOT NULL, PRIMARY KEY (`dept_no`), UNIQUE INDEX `dept_name` (`dept_name`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
