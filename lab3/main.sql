CREATE DATABASE mtuci_db;
CREATE TABLE department(
  id SERIAL PRIMARY KEY, 
  full_name VARCHAR NOT NULL, 
  deanery VARCHAR NOT NULL
);
CREATE TABLE student_group(
  id SERIAL PRIMARY KEY, 
  full_name VARCHAR NOT NULL, 
  department_id INTEGER NOT NULL REFERENCES department(id)
);
CREATE TABLE student(
  id SERIAL PRIMARY KEY, 
  full_name VARCHAR NOT NULL, 
  passport VARCHAR NOT NULL, 
  student_group_id INTEGER NOT NULL REFERENCES student_group(id)
);


INSERT INTO department(full_name, deanery)
VALUES
('Кафедра1', 'Деканат2'),
('Кафедра2', 'Деканат1');

INSERT INTO student_group(full_name, department_id)
VALUES 
('БИС1951', 1),
('БИС1951', 2),
('БСС1951', 1),
('БСС1951', 2);

INSERT INTO student(full_name, passport, student_group_id)
VALUES 
('Ахмедов', '1111', 1),
('Буров', '1112', 1),
('Гаранин', '1113', 1),
('Гасанова', '1114', 1),
('Герасимов', '1115', 1),
('Городничев', '1121', 2),
('Гребенюк', '1122', 2),
('Даниленко', '1123', 2),
('Жаринов', '1124', 2),
('Золотов', '1125', 2),
('Илясов', '1131', 3),
('Кашненков', '1132', 3),
('Кривченко', '1133', 3),
('Маньшин', '1134', 3),
('Медведева', '1135', 3),
('Миронов', '1141', 4),
('Пикассо', '1142', 4),
('Сафронова', '1143', 4),
('Сельдешев', '1144', 4),
('Степанов', '1145', 4);