const { Pool } = require("pg");
require("dotenv").config();

const pool = new Pool({
  host: "localhost",
  port: 5432,
  database: "cinescope",
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD || undefined
});

module.exports = pool;