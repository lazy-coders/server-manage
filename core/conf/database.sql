CREATE TABLE users (
		id INT(11) NOT NULL auto_increment,
		name VARCHAR(255),

		PRIMARY KEY (id)
);

CREATE TABLE services (
		id          INT(11) NOT NULL auto_increment,
		name        VARCHAR(255),
		description VARCHAR(1024),

		PRIMARY KEY (id)
);

CREATE TABLE configurations (
		id INT(11) NOT NULL auto_increment,
		user_id INT(11),
		service_id INT(11),
		name VARCHAR(255),
		value VARCHAR(1024),
		changed DATE,

		PRIMARY KEY (id)
);
