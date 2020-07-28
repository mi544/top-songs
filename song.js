const inquirer = require("inqurier");
const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "top_songsDB"
});

const artistQuery = artistName => {
    connection.query(`SELECT * FROM top5000 WHERE artist = ${artistName}`, (err, data) => {
        if (err) throw err;
        console.log(data);
    });
}

connection.connect(err => {
    if (err) throw err;
    console.log(`Connected as id ${connection.threadId}`);
    artistQuery("Beatles");
});