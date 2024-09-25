CREATE DATABASE fitness_center_db;

USE fitness_center_db;

CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(255) NULL
);

CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    member_id INT NOT NULL,
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (name, age, phone, email)
VALUES 
("Jane Doe", 25, "1-222-222-2222", "jane@doe.com"),
("John Smith", 35, "1-333-333-3333", "john@smith.com"),
("Jen Martin", 28, "1-444-444-4444", "jen@martin.com"),
("Wonder Woman", 32, "1-555-555-5555", "wonder@woman.com"),
("Bat Man", 36, "1-666-666-6666", "bat@man.com"),
("Rod Manly", 27, "1-777-777-7777", "rod@manly.com");

SELECT * FROM Members;

INSERT INTO WorkoutSessions (session_date, session_time, activity, member_id)
VALUES 
("2024-10-1", "morning", "Treadmill",1),
("2024-10-1", "evening", "Weights",2),
("2024-10-2", "mid-day", "Spin Class",1),
("2024-10-3", "morning", "Cardio",3),
("2024-10-5", "mid-day", "Treadmill",4),
("2024-10-4", "evening", "Dumbells",5),
("2024-10-3", "morning", "Cardio",6);

SELECT * FROM WorkoutSessions;

DELETE FROM WorkoutSessions
WHERE member_id = 2;

UPDATE WorkoutSessions
SET member_id = 6
WHERE member_id = 2;

DELETE FROM Members
WHERE id = 2;

UPDATE WorkoutSessions
SET session_time = "evening"
WHERE member_id = 1 AND activity = "Treadmill";

