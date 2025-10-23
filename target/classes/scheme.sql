-- Elimina la tabla 'users' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS users;

-- Crea la tabla 'users' con los campos originales, adaptados para SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Clave primaria autoincremental para SQLite
    name TEXT NOT NULL UNIQUE,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    password TEXT NOT NULL           -- Contraseña hasheada (TEXT es el tipo de cadena recomendado para SQLite)
);

DROP TABLE IF EXISTS persona;

CREATE TABLE persona (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER UNIQUE,
    first_name TEXT,
    last_name TEXT
);

DROP TABLE IF EXISTS teacher;

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER UNIQUE,
    degree TEXT,
    correo TEXT,
    CONSTRAINT fk_person FOREIGN KEY person_id REFERENCES persona(person_id)
);