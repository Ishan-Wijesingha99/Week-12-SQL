const express = require('express');

// Import and require mysql2 to execute mysql database commands from node
const mysql = require('mysql2');

// we define a port variable like this so that, when we deploy on Heroku, the port will be process.env.PORT, and when we run the server on our local device, it will be 3001
const PORT = process.env.PORT || 3001;

const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// need to store mysql.createConnection() in variable, often called db
// this will be an object
const db = mysql.createConnection(
  // need to give information about the database connection we want to create
  {
    host: 'localhost',
    user: 'root',
    password: 'mysqlishan99',
    database: 'classlist_db'
  },

  console.log(`Connected to the classlist_db database.`)
);



// you need to write 'source db/seeds.sql' so that node knows where to get the sql file
db.query('source db/seeds.sql', (err, results) => {
  console.log(results);

  // use db.query to write database commands from node
  // first argument is the database command
  // second argument is a callback function that is executed once this command is completed
  db.query('SELECT * FROM students;', (err, results) => {

  })

});



app.use((req, res) => {
  res.status(404).end();
});



// listening to port
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
