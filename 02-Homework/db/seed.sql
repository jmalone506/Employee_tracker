INSERT INTO department (dept)
VALUES 
("MANAGEMENT"),
("DOCTORS"),
("DOCTOR ASSISTANTS"),
("THERAPIST"),
("RECEPTION")
;

INSERT INTO role (title,salary,department_id)
VALUES
("OFFICE MANAGER",80000, 1),
("GENERAL MANAGER", 80000, 1),
("OPERATIONS MANAGER", 65000, 1),
("HUMAN RESOURCES", 58000, 1),
("CHIROPRACTOR", 72000, 2),
("MEDICAL", 90000, 2),
("CHIROPRACTORS ASSISTANT", 42000, 3),
("MEDICAL ASSISTANT", 42000, 3),
("MASSAGE THERAPIST" 42000, 4),
("FRONT DESK RECEPTIONIST" 46000, 5),

INSERT INTO employee (first_name,last_name,department_id,manager_id,role_id)
VALUES
("JOHN","CHASE", 3, 5, 6),
("TED", "MOLSBY", 1, 2, 4),
("BOBBY", "HILL",1,1,2),
("VICTOR", "CROSS", 1, 3, 2), 
("MAN", "MEGAS", 1, 3, 2), 
("CLARK", "KENT", 1, 3, 2), 
("BRUCE", "WANYE", 2, 1, 3), 
("TONY", "STARK", 3, 1, 4),
("BRET", "HART", 4, 2, 6),
("STEVE", "AUSTIN", 4, 3, 8),
("DUSTIN", "PAUL", 5, 3, 6),
("MATT", "LEINART", 7, 2, 10),
("MICHAEL", "BRANDON", 8, 2, 9),
("JIMMY", "LOGAN", 4, 3, 5),
("BRUCE", "BANNER", 4, 4, 5)
;
