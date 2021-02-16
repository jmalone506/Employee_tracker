DROP DATABASE IF EXISTS employee_tackerDb;
CREATE DATABASE employee_tackerDb;

USE employee_tackerDb;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,
    dept VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL (10) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
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

INSERT INTO role (title, salary, department_id)
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


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
("JOHN","CHASE", 1,2),
("TED", "MOLSBY", 2,3),
("BOBBY", "HILL", 8,3),
("VICTOR", "CROSS", 5,6), 
("SUSAN", "MEGAS", 3,4), 
("CLARK", "KENT", 5,5), 
("BRUCE", "WANYE", 6,2), 
("TONY", "STARK", 3),
("JEAN", "GREY", 8,4),
("STEVE", "AUSTIN", 8,4),
("DIANA", "PRINCE", 9,3),
("MATT", "LEINART",9, 4),
("MICHAEL", "BRANDON", 10, 8),
("JIMMY", "LOGAN", 4,4),
("REESE", "BANNER", 7,4)
;
