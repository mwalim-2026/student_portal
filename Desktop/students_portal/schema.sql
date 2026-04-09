DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS units;

-- =========================
-- STUDENTS TABLE
-- =========================
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- =========================
-- UNITS TABLE
-- =========================
CREATE TABLE units (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(20) UNIQUE NOT NULL
);

-- =========================
-- GRADES TABLE
-- =========================
CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    unit_id INTEGER REFERENCES units(id) ON DELETE CASCADE,
    score INTEGER CHECK (score >= 0 AND score <= 100)
);

-- =========================

-- =========================
INSERT INTO students (name, email) VALUES
('Brian Otieno', 'brianotieno@gmail.com'),
('Mary Wanjiku', 'marywanjiku@gmail.com'),
('Kevin Mwangi', 'kevinmwangi@gmail.com'),
('Faith Njeri', 'faithnjeri@gmail.com'),
('Daniel Kiptoo', 'danielkiptoo@gmail.com'),
('Grace Achieng', 'graceachieng@gmail.com'),
('Samuel Kariuki', 'samuelkariuki@gmail.com'),
('Mercy Atieno', 'mercyatieno@gmail.com'),
('Peter Kimani', 'peterkimani@gmail.com'),
('Esther Nyambura', 'esthernyambura@gmail.com');
-- =========================

-- =========================
INSERT INTO units (name, code) VALUES
('Artificial Intelligence', 'AI201'),
('Cyber Security', 'CS202'),
('Mobile App Development', 'MAD203'),
('Cloud Computing', 'CC204'),
('Software Engineering', 'SE205');
-- =========================

-- =========================
INSERT INTO grades (student_id, unit_id, score) VALUES
(1, 1, 85),
(1, 2, 78),
(2, 1, 90),
(2, 3, 88),
(3, 2, 76),
(3, 4, 80),
(4, 1, 65),
(4, 5, 70),
(5, 3, 88),
(5, 2, 92),
(6, 4, 75),
(6, 1, 68),
(7, 5, 95),
(7, 2, 89),
(8, 3, 72),
(8, 4, 85),
(9, 1, 91),
(9, 5, 87),
(10, 2, 77),
(10, 3, 69);
