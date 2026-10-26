CREATE TABLE IF NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS items (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    year INTEGER,
    rating NUMERIC(3,1),
    director VARCHAR(150),
    country VARCHAR(150),
    duration VARCHAR(50),
    image VARCHAR(255),
    category_id INTEGER NOT NULL REFERENCES categories(id)
);
INSERT INTO categories (id, name) VALUES
(1, 'Фантастика'),
(2, 'Драма'),
(3, 'Триллер'),
(4, 'Боевик'),
(5, 'Приключения'),
(6, 'Детектив')
ON CONFLICT (id) DO NOTHING;

SELECT setval(
    pg_get_serial_sequence('categories', 'id'),
    (SELECT MAX(id) FROM categories)
);