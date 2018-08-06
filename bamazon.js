var mysql = require("mysql");

var connection = mysql.createConnection({
   host: "127.0.0.1",
   port: 8889,
   user: "root",
   password: "root",
   database: "bamazon"
 });

 var prompt = require("prompt");

 var schema = {
   properties: {
     item_id: {
       message: "what ID would you like to purchase?",
       required: true
     },
     stock_quantity: {
       message: "How many would you like?",
       required: true
     }
   }
 };

 var userItemQuantity = 0;
 var userItemID = 0;

 
 connection.connect(function(err) {
   if (err) throw err;
   startApp();
 });


 function startApp(){
   connection.query("SELECT item_id, product_name, price FROM products", function(err, results) {
       if (err) throw err;
       console.log(results);

       prompt.start();
   
       prompt.get(schema, function (err, result) {
           if (err) throw err;
         userItemQuantity = parseInt(result.stock_quantity);
         userItemID = parseInt(result.item_id);
         checkQuantity();
       });
   })
 }


 function checkQuantity() {
   connection.query("SELECT stock_quantity, price FROM products WHERE item_id = " + mysql.escape(userItemID), function(err, results) {
       if (err) throw err;
       var itemStock = results[0].stock_quantity;
       var itemPrice = results[0].price;
       
       if(userItemQuantity <= itemStock){
           var newStockQuantity = itemStock - userItemQuantity;
           updateQuantity(newStockQuantity, itemPrice);
       } else{
           console.log("Insufficient quantity!");
       }
   })
 }
 

 function updateQuantity(value, price){

   connection.query("UPDATE products SET stock_quantity =" + mysql.escape(value) + " WHERE item_id = " + mysql.escape(userItemID), function(err, results) {
       if (err) throw err;
       console.log("Your total is: " + (userItemQuantity * price));
   })
 }