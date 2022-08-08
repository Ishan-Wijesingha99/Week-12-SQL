const express = require('express');
// Import and require mysql2
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // MySQL password
    password: 'mysqlishan99',
    database: 'courses_db'
  },
  console.log(`Connected to the courses_db database.`)
);

// Hardcoded query: DELETE FROM course_names WHERE id = 3;
// the whole point of this is so that we can avoid hardcoding values in MySQL, we can use ?, and whatever we want ? to be, we write as the second argument in db.query, we can write whatever javascript expression we want here; written programatically
db.query(`DELETE FROM course_names WHERE id = ?`, 3, (err, result) => {
  if (err) {
    return console.log(err);
  }
  console.log(result);
});



// Query database
db.query('SELECT * FROM course_names', (err, results) => {
  console.log(results);
});



// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});



app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
