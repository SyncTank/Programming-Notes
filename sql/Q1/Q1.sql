-- CREATE DATABASE T1;
-- SHOW DATABASES ;

CREATE DATABASE T1;
SHOW DATABASES;

USE T1;

-- @block
CREATE  TABLE Users(
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       email CHAR(255) NOT NULL UNIQUE,
                       bio TEXT,
                       country VARCHAR(2)
);

-- DELETE Users FROM users;

-- @block
INSERT INTO Users (email, bio, country)
VALUES
    ('Hello@world.com','I love tomate','US'),
    ('H232o@world.com','I love','BR'),
    ('H7777lo@world.com','I tomate','US'),
    ('H80@world.com','10011','KR'),
    ('He90@world.com','01011','TA'),
    ('9080@world.com','00100','XZ');

SELECT * FROM Users;
SELECT email,id FROM Users WHERE country = 'US' ORDER BY id DESC LIMIT 2;

SELECT email,id FROM Users
WHERE country = 'US'
ORDER BY id DESC
LIMIT 5;

CREATE INDEX email_index ON Users(email);

DROP TABLE Rooms;

CREATE TABLE Rooms(
                      id INT AUTO_INCREMENT,
                      street CHAR(255),
                      owner_id INT NOT NULL,
                      PRIMARY KEY (id),
                      FOREIGN KEY (owner_id) REFERENCES Users(id)
);

SET FOREIGN_KEY_CHECKS = 1; -- hack for disabling check on table for operation

INSERT INTO Rooms (owner_id, street)
VALUES
    (1, 'comic sans'),
    (2, 'nantucket'),
    (1, 'san fs card'),
    (3, 'vail'),
    (4, 'san diego');

INSERT INTO Rooms (owner_id, street)
VALUES (0 ,'sans');

SELECT * FROM Rooms;
SELECT id FROM Rooms ORDER BY id DESC LIMIT 2;

SELECT * FROM Users
INNER JOIN Rooms ON Rooms.owner_id = Users.id;

SELECT * FROM Users LEFT JOIN Rooms ON Rooms.owner_id = Users.id;

SELECT
    Users.id AS user_id,
    Rooms.id AS room_id,
    email,
    street
FROM Users
INNER JOIN Rooms ON Rooms.owner_id = Users.id;

CREATE TABLE Bookings(
                         id INT AUTO_INCREMENT,
                         guest_id INT NOT NULL,
                         room_id INT NOT NULL,
                         check_in DATETIME,
                         PRIMARY KEY (id),
                         FOREIGN KEY (guest_id) REFERENCES Users(id),
                         FOREIGN KEY (room_id) REFERENCES Rooms(id)
);

SELECT
    guest_id,
    street,
    check_in
FROM Bookings
         INNER JOIN Rooms ON Rooms.owner_id = guest_id
WHERE guest_id = 1;

SELECT
    room_id,
    guest_id,
    email,
    bio
FROM Bookings
         INNER JOIN Users ON Users.id = guest_id
WHERE room_id = 1;

DROP TABLE Users, Rooms, Bookings;
DROP DATABASE t1;


