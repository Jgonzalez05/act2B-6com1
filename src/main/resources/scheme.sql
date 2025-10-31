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
    person_id INTEGER PRIMARY KEY AUTOINCREMENT,
    dni INTEGER NOT NULL UNIQUE, -- DNI de la persona ingresada como usuario 
    first_name TEXT NOT NULL,   -- Nombre de la persona ingresada como usuario
    last_name TEXT NOT NULL     -- Apellido de la persona ingresada como usuario
    CONSTRAINT  CHECK(dni < 1000000000 AND dni >= 0) ON DELETE CASCADE,
    CONSTRAINT fk_id FOREIGN KEY person_id REFERENCES users(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS teacher;

CREATE TABLE teacher (
    teacher_id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher_dni INTEGER NOT NULL UNIQUE,
    degree TEXT NOT NULL,            -- Titulo universitario del profesor 
    email TEXT NOT NULL UNIQUE,      -- Correo electrónico del profesor 
    CONSTRAINT check_email CHECK(email LIKE '/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/'),  --chequea mail válido
    CONSTRAINT fk_id FOREIGN KEY teacher_id REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_dni FOREIGN KEY teacher_dni REFERENCES persona(dni) ON DELETE CASCADE
);