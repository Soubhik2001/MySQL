const express = require("express");
const ejs = require("ejs");
const mysql=require ("mysql");
const bodyParser = require("body-parser");

const app = express();
app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extendesd:true}));
app.use(express.static("public"));

const connection=mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"Soubhik@25",
    database:"join_us",
});

app.get("/", function (req, res) {
  var q = "SELECT COUNT(*) as count FROM users";
  connection.query(q, function (error, results) {
    if (error) throw error;
    const count=results[0].count;
    return res.render("home",{count});
    // var msg = "We have " + results[0].count + " users";
    // res.send(msg);
  });
});


app.post('/register', function(req,res){
  var person = {email: req.body.email};
  connection.query('INSERT INTO users SET ?', person, function(err, result) {
  console.log(err);
  console.log(result);
  res.redirect("/");
  });
 });


app.listen(3000, function () {
  console.log("Server running on 3000!");
});
