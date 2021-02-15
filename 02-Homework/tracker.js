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
            "Add Job",
            "Add Department",
            "---VIEW---",
            "View Department",
            "View Job",
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
                case "Add Job":
                    addJob();
                    break;
                case "Add Department":
                addDepartment();
                break;
                case "View Employee":
                    viewEmployee();
                    break;
                case "View Job":
                    viewJob();
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
    var query = "SELECT first_name, last_name,title,salary, dept FROM employee INNER join role ON employee.role_id=job.id INNER join department ON job.department_id=deparment.id";
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
function viewJob(){
    var query = "SELECT * FROM job";
    connection.query(query,function(err,res){
        if (err) throw err;
        console.table(res)
        start();
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
        message:"What's your title?"
    },
    {
        name:"employeeSalary",
        type:"input",
        message:"What's your current salary?"
    },
    {
        name:"employeeDepartmentID",
        type:"input",
        message:"Department ID?"
    },
])
.then(function(answer){
    var query = "INSERT INTO role(title,salary, department_id) VALUES(?,?,?)";
    connection.query(query,[answer.emloyeeTitle,answer.employeeSalary,answer.employeeDepartmentID], function(err, res){
        if (err) throw err;
        viewRole();
    });
});
}