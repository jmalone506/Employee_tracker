DROP DATABASE IF EXISTS employee_tackerDb;
CREATE DATABASE employee_tackerDb;

USE employee_tackerDb;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,
    dept VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(50) NOT NULL,
    salary DECIMAL (10) NOT NULL.
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR (50) NOT NULL.
    role_id INT NULL,
    manager_id INT NULL
    PRIMARY KEY (id)
);