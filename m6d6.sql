CREATE TABLE IF NOT EXISTS
    tutors (
    tutor_id INT GENERATED ALWAYS AS IDENTITY,
    tutor_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
	country VARCHAR	NOT NULL
);

CREATE TABLE IF NOT EXISTS
    students (
    student_id INTEGER primary key generated always as identity,
    fist_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
	country VARCHAR
);

CREATE TABLE IF NOT EXISTS
    modules (
    module_id INTEGER primary key generated always as identity,
    module_name VARCHAR NOT NULL,
    module_type VARCHAR NOT NULL,
    module_topic VARCHAR NOT NULL
);

INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Diego','Banovaz ', 'Italy');
   
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Riccardo','Gulin ', 'Italy');
 
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Stefano','Cassasola', 'Italy');
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Stefano','Micelli', 'Italy');
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Luis','Antonio', 'Italy');
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Tetiana','Yaremko', 'Ukraine');
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Daniele','Banovaz', 'Italy');
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Alessia','Luminari', 'Italy');
INSERT INTO 
   tutors
   (tutor_name, last_name, country) 
   VALUES('Ubeyt','Demir', 'Turkey');
   
--select * from tutors;

INSERT INTO 
   modules
   (module_name, module_type, module_topic) 
   VALUES('M1','Frontend', 'Javascript');
INSERT INTO 
   modules
   (module_name, module_type, module_topic) 
   VALUES('M2','Frontend', 'Bootsrap');
INSERT INTO 
   modules
   (module_name, module_type, module_topic) 
   VALUES('M3','Frontend', 'Advanced Javascript');
INSERT INTO 
   modules
   (module_name, module_type, module_topic) 
   VALUES('M4','Frontend', 'React.js');
INSERT INTO 
   modules
   (module_name, module_type, module_topic) 
   VALUES('M5','Backend', 'Node.js');
INSERT INTO 
   modules
   (module_name, module_type, module_topic) 
   VALUES('M6','Backend', 'Mongo & postgres');
--select * from modules

INSERT INTO students(fist_name,last_name) VALUES('Gentrit','Begaj');
INSERT INTO students(fist_name,last_name) VALUES('Slavko','Josipovic');
INSERT INTO students(fist_name,last_name) VALUES('Luca','Perullo');
INSERT INTO students(fist_name,last_name) VALUES('Ardi','Germenji');
INSERT INTO students(fist_name,last_name) VALUES('Jamie','Ellis');
INSERT INTO students(fist_name,last_name) VALUES('H�seyin Can','Soylu');
INSERT INTO students(fist_name,last_name) VALUES('Hafiz','Ali');
INSERT INTO students(fist_name,last_name) VALUES('Juan','Arana');
INSERT INTO students(fist_name,last_name) VALUES('Mihai','Ivanov');
INSERT INTO students(fist_name,last_name) VALUES('David','Zapata');
INSERT INTO students(fist_name,last_name) VALUES('Paul','Balu');
INSERT INTO students(fist_name,last_name) VALUES('Sean','Knowles');

--select * from students

--select 'Javascript' from modules

--select 'italy' from modules

--UPDATE students SET coutry = 'Germany' WHERE student_id = 11;

--SELECT * FROM students WHERE fist_name  LIKE '%uan%';
--SELECT * FROM tutors WHERE country  LIKE '%Italy%';
--SELECT * FROM modules WHERE module_type LIKE '%Frontend%';
SELECT * FROM tutors WHERE country='Ukraine' or country = 'Turkey';