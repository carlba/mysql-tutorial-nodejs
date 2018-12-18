let faker = require('faker');
let mysql = require('mysql');

console.log(faker.internet.email());

let connection = mysql.createConnection({
    host: 'localhost',
    user: 'join_us',
    password: 'join_us',
    database: 'join_us'
});

// SELECTING
// connection.query('SELECT * FROM users', function (error, results, fields) {
//     if (error) throw error;
//     console.log(results);
// });

// INSERT ONE
// let person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };
//
// let end_result = connection.query('INSERT INTO users SET ?', person, function (error, results) {
//     if (error) throw error;
//     console.log(results);
// });

let values = [];
for (let i = 0; i < 500; i++) {
    values.push([ faker.internet.email(), faker.date.past()]);
}

console.log(values);

let query = 'INSERT INTO users (email, created_at) VALUES ?';
connection.query(query,[values],  function(err, result) {
    console.log(err);
    console.log(result);
});

connection.end();



