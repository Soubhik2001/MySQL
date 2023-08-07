const { faker } = require('@faker-js/faker');
const mysql = require('mysql');

var connection= mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'Soubhik@25',
    database:'join_us'
});

// console.log(faker.internet.email());

// function generateAddress(){
//     console.log(faker.location.streetAddress());
//     console.log(faker.location.city());
//     console.log(faker.location.state());
//   }

//   generateAddress();

// var person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };

// var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
//     if (err) throw err;
//     console.log(result);
//   });


var data = [];
for(var i = 0; i < 500; i++){
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}
 
 
var q = 'INSERT INTO users (email, created_at) VALUES ?';
 
connection.query(q, [data], function(err, result) {
  console.log(err);
  console.log(result);
});
 
connection.end();