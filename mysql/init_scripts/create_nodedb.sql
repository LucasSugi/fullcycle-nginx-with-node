USE nodedb;
CREATE TABLE users (
    id integer not null auto_increment,
    name varchar(200),
    PRIMARY KEY (id)
);
INSERT INTO users (name) VALUES ("User 1");
INSERT INTO users (name) VALUES ("User 2");
INSERT INTO users (name) VALUES ("User 3");
