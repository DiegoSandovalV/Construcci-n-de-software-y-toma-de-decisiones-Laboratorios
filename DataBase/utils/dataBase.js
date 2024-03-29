const mysql = require("mysql2");

const dataBase = mysql.createPool({
  host: "localhost",
  user: "root",
  database: "carlosdiego",
  password: "",
  port: 8000 || 3306,
});

//Check connection
dataBase.getConnection((err, connection) => {
  if (err) {
    console.log("Error connecting to database");
    console.log(err);
    return;
  }
  console.log("Connected to database");
});

module.exports = dataBase.promise();
