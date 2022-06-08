CREATE DATABASE featuress;

CREATE TABLE features ( 
	id VARCHAR(36),
	name varchar(255) UNIQUE,
	PRIMARY KEY(id)
);

CREATE TABLE customer_features ( 
	feature_id VARCHAR(36), 
	feature_name varchar(255), 
	customer_id int NOT NULL,
	CONSTRAINT feature_id 
		FOREIGN KEY(feature_id) 
			REFERENCES features(id),
	CONSTRAINT feature_name 
		FOREIGN KEY(feature_name) 
			REFERENCES features(name)
);
