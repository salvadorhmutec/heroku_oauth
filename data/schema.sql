CREATE DATABASE heroku_google;

USE heroku_google;

CREATE TABLE users(
    user varchar(64) NOT NULL PRIMARY KEY,
    privilege integer NOT NULL DEFAULT -1,
    status integer NOT NULL DEFAULT 1,
    username varchar(150) NOT NULL,
    email varchar(100) NOT NULL,
    other_data varchar(50) NOT NULL,
    user_hash varchar(32) NOT NULL,
    created timestamp NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE sessions(
    session_id char(128) UNIQUE NOT NULL,
    atime timestamp NOT NULL default current_timestamp,
    data text
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE logs( 
    id_log integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user varchar(64) NOT NULL,
    ip varchar(16) NOT NULL,
    access timestamp NOT NULL,
    FOREIGN KEY (user) REFERENCES users(user)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO users (user, privilege, status, username, email, other_data, user_hash)
VALUES 
('salvadorhm@gmail.com', 0, 1, 'Salvador HM', 'salvadorhm@gmail.com','administrador', MD5(concat('salvadorhm@gmail.com', 'kuorra_key', '2016/06/04')));

CREATE USER 'heroku_google'@'localhost' IDENTIFIED BY 'heroku.2019';
GRANT ALL PRIVILEGES ON heroku_google.* TO 'heroku_google'@'localhost';
FLUSH PRIVILEGES;

SELECT * FROM users;
SELECT * FROM sessions;
SELECT * FROM logs;
