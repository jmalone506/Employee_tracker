DROP DATABASE IF EXISTS employee_tackerDb;
CREATE DATABASE employee_tackerDb;

USE employee_tackerDb;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,
    dept VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE job (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(50) NOT NULL,
    salary DECIMAL (10) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    role_id INT NULL,
    manager_id INT NULL,
    PRIMARY KEY (id)
);
INSERT INTO department (dept)
VALUES 
("MANAGEMENT"),
("DOCTORS"),
("DOCTOR ASSISTANTS"),
("THERAPIST"),
("RECEPTION")
;

INSERT INTO job (title,salary,department_id)
VALUES
("OFFICE MANAGER",80000, 1),
("GENERAL MANAGER", 80000, 1),
("OPERATIONS MANAGER", 65000, 1),
("HUMAN RESOURCES", 58000, 1),
("CHIROPRACTOR", 72000, 2),
("MEDICAL", 90000, 2),
("CHIROPRACTORS ASSISTANT", 42000, 3),
("MEDICAL ASSISTANT", 42000, 3),
("MASSAGE THERAPIST", 42000, 4),
("FRONT DESK RECEPTIONIST", 46000, 5);

INSERT INTO employee (first_name,last_name,department_id)
VALUES
("JOHN","CHASE", 3, 5, 6),
("TED", "MOLSBY", 1, 2, 4),
("BOBBY", "HILL",1,1,2),
("VICTOR", "CROSS", 1, 3, 2), 
("SUSAN", "MEGAS", 1, 3, 2), 
("CLARK", "KENT", 1, 3, 2), 
("BRUCE", "WANYE", 2, 1, 3), 
("TONY", "STARK", 3, 1, 4),
("JEAN", "GREY", 4, 2, 6),
("STEVE", "AUSTIN", 4, 3, 9),
("DIANA", "PRINCE", 5, 3, 6),
("MATT", "LEINART", 7, 2, 1),
("MICHAEL", "BRANDON", 8, 2, 4),
("JIMMY", "LOGAN", 4, 3, 5),
("REESE", "BANNER", 4, 4, 5)
;
