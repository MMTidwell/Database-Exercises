-- creates table | assigned an ID to auto fill | added in text field | assigned primary key to ID
CREATE TABLE roles (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

-- creates second table | assigns ID to auto fill | name section | email section | role_id does not auto fill and can be null | primary key id | foreign key set to role_id with refrences of roles
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	role_id INT UNSIGNED DEFAULT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (role_id) REFERENCES roles (id)
);

-- inserts columns into tables
INSERT INTO roles (NAME) VALUES ('admin');
INSERT INTO roles (NAME) VALUES ('author');
INSERT INTO roles (NAME) VALUES ('reviewer');
INSERT INTO roles (NAME) VALUES ('commenter');

-- inserts values into columns on tables
INSERT INTO users (NAME, email, role_id) VALUES
	('bob', 'bob@example.com', 1),
	('joe', 'joe@example.com', 2),
	('sally', 'sally@example.com', 3),
	('adam', 'adam@example.com', 3),
	('jane', 'jane@example.com', NULL),
	('mike', 'mike@example.com', NULL);

-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors
INSERT INTO users (NAME, email, role_id) VALUES
	('brian', 'brian@example.com', 2),
	('tim', 'tim@example.com', 2),
	('kessler', 'kessler@example.com', 2),
	('russell', 'russell@example.com', NULL);

-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
-- join
/* SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id; */
SELECT * 
FROM users AS u
JOIN roles AS r
	ON r.id = u.rol_id;
-- left join
/* SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id; */
SELECT *
FROM users AS u
LEFT JOIN roles AS r
	ON r.id = u.role_id;
-- right join
/* SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id; */
SELECT *
FROM users AS u
RIGHT JOIN roles AS r
	ON r.id = u.role_id;

-- Although NOT explicitly covered IN the lesson, AGGREGATE functions LIKE count can be used WITH JOIN queries. USE count AND the appropriate JOIN TYPE TO get a LIST of roles along WITH the number of users that has the role. Hint: You will also need TO USE GROUP BY IN the query.
-- prints the columns being pulled and titles the column
SELECT r.name, count(u.name) AS num_of_users
-- users are unique, roles are not unique engouh 
FROM users AS u
-- right join so we can see all of the roles enven if they are null, if we just do join then we will not see the null values, if we do left join we will see null for commenter 
RIGHT JOIN roles AS r
	ON u.role_id = r.id
GROUP BY r.name;










