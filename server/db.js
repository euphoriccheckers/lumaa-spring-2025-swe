require('dotenv').config();

const pool = require("pg").Pool;

console.log(process.env);
const pool = new Pool({
    host: "localhost",
    user: process.env.PSQL_USERNAME,
    password: process.env.PSQL_PASS,
    database: "Todo"
});

module.exports = pool;