# CineScope — каталог фильмов

CineScope — учебный многостраничный сайт-каталог фильмов, созданный в рамках лабораторных работ по дисциплине «Интернет-программирование».

## Используемые технологии

- HTML5
- CSS3, Flexbox, CSS Grid, Media Queries
- JavaScript
- Node.js и Express
- PostgreSQL
- REST API
- Git и GitHub

## Возможности проекта

- Просмотр каталога фильмов.
- Поиск, фильтрация и сортировка фильмов в каталоге.
- Просмотр подробной информации о выбранном фильме.
- Получение списка фильмов и категорий через REST API.
- Добавление фильмов через форму с сохранением в PostgreSQL.
- Проверка существования фильма по ID и обработка ошибки 404.

## Структура проекта

- `server.js` — сервер Express и API-маршруты.
- `db.js` — подключение к PostgreSQL.
- `public/index.html` — главная страница.
- `public/catalog.html` — каталог фильмов.
- `public/item.html` — страница отдельного фильма.
- `public/add.html` — форма добавления фильма.
- `public/css/style.css` — стили сайта.
- `public/images/` — постеры фильмов.
- `sql/schema.sql` — структура таблиц и категории.
- `sql/movies.sql` — данные фильмов.
- `.env.example` — пример переменных окружения.

## Требования

- Node.js и npm.
- PostgreSQL.
- Git — для работы с репозиторием.

## Установка и запуск

1. Клонировать репозиторий:

   ```bash
   git clone https://github.com/MIkhailT1337/CineScope.git
   cd CineScope
   ```

2. Установить зависимости:

   ```bash
   npm install
   ```

3. Создать базу данных PostgreSQL:

   ```bash
   createdb cinescope
   ```

4. Создать таблицы и добавить категории:

   ```bash
   psql -d cinescope -f sql/schema.sql
   ```

5. Добавить фильмы:

   ```bash
   psql -d cinescope -f sql/movies.sql
   ```

6. Создать локальный файл `.env` с параметрами подключения к PostgreSQL, ориентируясь на `.env.example`.

7. Запустить сервер:

   ```bash
   node server.js
   ```

8. Открыть сайт в браузере:

   `http://localhost:3000`

## REST API

| Метод | Маршрут | Назначение |
|---|---|---|
| GET | `/api/categories` | Получить категории |
| GET | `/api/items` | Получить все фильмы |
| GET | `/api/items/:id` | Получить фильм по ID |
| POST | `/api/items` | Добавить фильм |

## Восстановление базы данных

SQL-файлы в папке `sql/` позволяют создать таблицы и загрузить сохранённые данные фильмов в новую базу данных.

## Репозиторий

https://github.com/MIkhailT1337/CineScope
