-- create "salaries" table
CREATE TABLE `salaries` (`emp_no` int NOT NULL, `salary` int NOT NULL, `from_date` date NOT NULL, `to_date` date NOT NULL, PRIMARY KEY (`emp_no`, `from_date`), CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON UPDATE NO ACTION ON DELETE CASCADE) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
