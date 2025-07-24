
CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    teacher_name VARCHAR(120),
    specialty TEXT
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(40),
    course_description TEXT
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(120),
    student_email VARCHAR(70) UNIQUE
);

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    id_student INT REFERENCES students(id),
    id_course INT REFERENCES courses(id),
    date DATE
);
