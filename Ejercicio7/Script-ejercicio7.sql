CREATE TABLE subjects (
    id SERIAL PRIMARY KEY,
    subject_name VARCHAR(45) not null 
);

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    teacher_name VARCHAR(120) not null,
    subject_id INT REFERENCES subjects(id)
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(120) not NULL,
    student_document INT unique not null
);

CREATE TABLE students_have_subjects(
	id_student INT references students(id),
	id_subject INT references subjects(id)
)


CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    id_student INT REFERENCES students(id),
    term INT,
    score NUMERIC(1,1) CHECK (score BETWEEN 0.0 AND 5.0),
    UNIQUE(id_student, term)
);
