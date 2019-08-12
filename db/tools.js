var mysql = require("mysql");
var inquirer = require("inquirer");
require("cli-table3");


var connection = mysql.createConnection({
  host: "localhost",


  port: 3306,


  user: "root",
  password: "password",
  database: "tools_db"
});

connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
  }
  showTools();
});

function showTools() {

  connection.query("SELECT * FROM tools", function (err, res) {
    if (err) throw err;
    console.table(res);

  });
}