var mysql = require("mysql")
var inquirer = require("inquirer")

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user:"root",
    password: "Cskdmkj@506",
    database: "employee_tackerDb",
});

connection.connect(function(err){
    if (err) throw err;
    start();
});


function start(){
    inquirer
    .prompt({
        name:"action",
        type: "rawlist",
        message:"What are you trying to do?",
        choices:["----ADD---",
            "Add Employee",
            "Add Role",
            "Add Department",
            "---VIEW---",
            "View Department",
            "View Role",
            "View Employee",
            "Update Employee",
            "Exit",
        ]
    })
    .then(function(answer){
        switch(answer.action){
            case "Add Employee":
                addEmployee();
                break;
                case "Add Role":
                    addRole();
                    break;
                case "Add Department":
                addDepartment();
                break;
                case "View Employee":
                    viewEmployee();
                    break;
                case "View Role":
                    viewRole();
                    break;
                case "View Department":
                viewDepartment();
                break;
            case "Update Employee":
                updateEmployee();
                break;
                case "Exit":
                exit();
                break;
        }
    })
}
function viewEmployee(){
    var query = "SELECT first_name, last_name, title, salary, dept FROM employee INNER join Role ON employee.role_id=Role.id INNER join department ON Role.department_id=department.id";
    connection.query(query, function(err, res){
        if (err) throw err;
        console.table(res)
        start();
    });

}
function viewDepartment(){
    var query = "SELECT * FROM department";
    connection.query(query,function(err,res){
        if (err) throw err;
        console.table(res);
        start();
    })
}
function viewRole(){
    var query = "SELECT * FROM Role";
    connection.query(query,function(err,res){
        if (err) throw err;
        console.table(res)
        start();
    });
}
function addEmployee(){
    inquirer
    .prompt({
        name: "createEmployeeFn",
        type: "input",
        message: "What is your first name?"

    },
    {
        name: "createEmployeeLn",
        type: "input",
        message: "What is your last name?"
    },
    {
        name:"nameOfRole",
        type:"input",
        message:"what is your role ID?",

    },)
    .then(function(answer){
        var query = "INSERT INTO employee(first_name, last_name, department_id, role_id) VALUES (?,?,?)";
        connection.query(query, answer.createEmployeeFn, answer.createEmployeeLn, answer.nameOfRole, function(err, res){
            if (err) throw err;
            viewEmployee();
        });
    });
}
function addDepartment(){
    inquirer
    .prompt({
        name: "createDepartment",
        type: "input",
        message: "Which Department would you like to be added?"
    })
    .then(function(answer){
        var query = "INSERT INTO department(dept) VALUES (?)";
        connection.query(query, answer.createDepartment, function(err, res){
            if (err) throw err;
            viewDepartment();
        });
    });
}
function addRole(){
    inquirer
    .prompt([{
        name:"employeeTitle",
        type:"input",
        message:"What's your title you would like to add?"
    },
    {
        name:"employeeSalary",
        type:"input",
        message:"What's the salary?"
    },
    {
        name:"employeeDepartmentID",
        type:"input",
        message:"Department ID?"
    },
])
.then(function(answer){
    var query = "INSERT INTO role(title, salary, department_id) VALUES(?,?,?)";
    connection.query(query,[answer.emloyeeTitle,answer.employeeSalary,answer.employeeDepartmentID], function(err, res){
        if (err) throw err;
        viewRole();
    });
});
}