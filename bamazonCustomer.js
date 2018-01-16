var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  console.log("connected as id: " + connection.threadID);
  // start();
});

function display() {
  var sql = "SELECT * FROM products";
  connection.query(sql, (err, res) => {
    if(err) throw err;
    console.table(res);
    buy();
  
  })
};
display();

function buy() {
  inquirer
    .prompt([
      {
        name: "purchase",
        type: "input",
        message: "Enter the id of the product you would like purchase."
        },
      {
      name: "quantity",
      type: "input",
      message: "Enter the desired quantity of the product."
    }
    ])
    .then(function(answer) {
          // var id = answer.purchase;
          var amount = answer.quantity;
          connection.query(
            "SELECT item_id, stock_quantity FROM products WHERE ?", {item_id: answer.purchase}, function(err, res){
          var query = res[0].stock_quantity - answer.quantity;
          connection.query ("UPDATE products SET ? WHERE ?", [
            {
            stock_quantity: query
            },
            {
              item_id: answer.purchase
            }

          ],
         
        );
        
          })
        // if (answer.quantity <= 0) {
        //   console.log("Insufficient quantity!");
        // }
        // else {
        // }
      console.log("Your order has been placed!");
    
    });
    
}