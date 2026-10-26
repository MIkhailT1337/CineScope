const express = require("express");
const db = require("./db");

const app = express();
const PORT = 3000;

app.use(express.json());
app.use(express.static("public"));

// Получить все категории
app.get("/api/categories", async function (req, res) {
  try {
    const result = await db.query(
      "SELECT * FROM categories ORDER BY id"
    );

    res.json(result.rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Ошибка сервера" });
  }
});
// Получить все фильмы
app.get("/api/items", async function (req, res) {
  try {
    const result = await db.query(`
      SELECT
        items.*,
        categories.name AS category_name
      FROM items
      JOIN categories ON items.category_id = categories.id
      ORDER BY items.id
    `);

    res.json(result.rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Ошибка сервера" });
  }
});
// Получить один фильм по ID
app.get("/api/items/:id", async function (req, res) {
  try {
    const id = req.params.id;

    const result = await db.query(
      `SELECT
         items.*,
         categories.name AS category_name
       FROM items
       JOIN categories ON items.category_id = categories.id
       WHERE items.id = $1`,
      [id]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({
        error: "Фильм не найден"
      });
    }

    res.json(result.rows[0]);
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: "Ошибка сервера"
    });
  }
});
// Добавить новый фильм
app.post("/api/items", async function (req, res) {
  try {
    const {
      title,
      description,
      year,
      rating,
      director,
      country,
      duration,
      image,
      category_id
    } = req.body;

    // Проверяем обязательные поля
    if (!title || !description || !category_id) {
      return res.status(400).json({
        error: "Заполните название, описание и категорию"
      });
    }

    const result = await db.query(
      `INSERT INTO items
       (title, description, year, rating, director,
        country, duration, image, category_id)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
       RETURNING *`,
      [
        title,
        description,
        year || null,
        rating || null,
        director || null,
        country || null,
        duration || null,
        image || null,
        category_id
      ]
    );

    res.status(201).json(result.rows[0]);
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: "Ошибка при добавлении фильма"
    });
  }
});
app.listen(PORT, function () {
  console.log("Сервер CineScope запущен: http://localhost:3000");
});