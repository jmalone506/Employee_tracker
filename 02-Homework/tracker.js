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
        
    })
}