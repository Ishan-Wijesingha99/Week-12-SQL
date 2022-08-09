// modules
const express = require('express');
const mysql = require('mysql2');

// set up port
const PORT = process.env.PORT || 3001;

// set up express app
const app = express();

// middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// create mysql database connection
const db = mysql.createConnection(
  {
    host: 'localhost',
    user: 'root',
    password: 'mysqlishan99',
    database: 'books_db'
  },
  // this will be logged to the console when connection is made
  console.log(`Connected to the books_db database.`)
);



// executing MySQL query in node.js
db.query('SELECT COUNT(id) AS total_count FROM favorite_books GROUP BY in_stock', function (err, results) {
  console.log(results);
});

// executing MySQL query in node.js
db.query('SELECT SUM(quantity) AS total_in_section, MAX(quantity) AS max_quantity, MIN(quantity) AS min_quantity, AVG(quantity) AS avg_quantity FROM favorite_books GROUP BY section', function (err, results) {
  console.log(results);
});



// sending back default response for all requests
app.use((req, res) => {
  res.status(404).end();
});

// listening on port
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
