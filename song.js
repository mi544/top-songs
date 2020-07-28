const inquirer = require("inquirer");
const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "8073",
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
    artistQuery("The Beatles");
});