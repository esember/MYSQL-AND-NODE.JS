
// USING  FAKER 

var faker = require('faker'); 

function adres(){
  console.log(faker.address.streetAddress());
  console.log(faker.address.city());
  console.log(faker.address.state());
}

adres(); 



// CONNECTIN NODE TO SQL

var mysql = require("mysql")

var connection = mysql.createConnection
({
    host    :     "localhost", 
    user    :     "root",  
    database:     "join_us" 
});


	// COUNT FROM SQL


	var mysql = require("mysql")
var connection =mysql.createConnection
({
    host    :     "localhost",
    user     : "root",
    database    :    "join_us"
    
});


var q= "SELECT COUNT (email) AS total from users";

connection.query(q, function(hata, sonuรง, alan){
    if(hata) throw hata;
    console.log(sonuรง[0].total);
    
});

connection.end();

// CREATE SQL TABLE 

var mysql = require("mysql")

var connection = mysql.createConnection
({
    host    :     "localhost",
    user    :     "root",
    database:     "join_us"
});

var q = "CREATE TABLE users ( id int auto_increment primary key,name  varchar(100),last_name varchar(100),email varchar(100), created_at  TIMESTAMP DEFAULT NOW())";
connection.query(q, function(error, results, fields){
    if (error) throw error;
    console.log(results);   
    
});

connection.end();

// INSERTING VALUE TO SQL VIA NODE METHOD 1

var mysql = require("mysql")

var connection = mysql.createConnection
({
    host    :     "localhost",
    user    :     "root",
    database:     "join_us"
});

var q = 'INSERT INTO users (email) VALUES ("velideli@patmail.com")';

connection.query(q, function (error,results,fields) {
    
    if(error) throw error;
    console.log(results);
});

////////INSERTING VALUE TO SQL VIA NODE METHOD 2
var mysql = require("mysql")
var faker = require("faker")

var connection = mysql.createConnection
({
    host    :     "localhost",
    user    :     "root",
    database:     "join_us"
});




var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};
 
var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
  if (err) throw err;
  console.log(result);
});
connection.end();

/////// INSERTING 500 VALUES TO SQL VIA NODE 

var mysql =require('mysql');
var faker =require("faker");

var connection =mysql.createConnection({
    host    :"localhost",
    user    :"root",
    database:"join_us"


});


var data =[];
for(var i = 0; i<500; i++)
    {
        data.push([
            
          faker.name.firstName(),
          faker.name.lastName(),
          faker.internet.email(),
          faker.date.past()
                              
        ]);
    }

var q = "insert into users (name, last_name, email, created_at ) values ?";

connection.query(q,[data], function(err, result){
    console.log(err);
    console.log(result);
});

connection.end();

///// SELECTING FROM USERS  FROM SQL VIA NODE

var mysql = require("mysql")

var connection = mysql.createConnection
({
    host    :     "localhost",
    user    :     "root",
    database:     "join_us"
});

var q = "select * from users ";
connection.query(q, function(error, results, fields){
    if (error) throw error;
    console.log(results);   
    
});

connection.end();