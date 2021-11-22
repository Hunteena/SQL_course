CREATE TABLE IF NOT EXISTS genres (
	id serial PRIMARY KEY,
	title varchar(40) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS performers (
	id serial PRIMARY KEY,
	performer_name varchar(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS performer_genre (
	performer_id integer REFERENCES performers(id),
	genre_id integer REFERENCES genres(id),
	CONSTRAINT performer_genre_pk PRIMARY KEY (performer_id, genre_id) 
);
CREATE TABLE IF NOT EXISTS albums (
	id serial PRIMARY KEY,
	title varchar(40) NOT NULL,
	released integer CHECK (released < 2100)
);
CREATE TABLE IF NOT EXISTS perfomer_album (
	performer_id integer REFERENCES performers(id),
	album_id integer REFERENCES albums(id),
	CONSTRAINT performer_album_pk PRIMARY KEY (performer_id, album_id) 
);
CREATE TABLE IF NOT EXISTS tracks (
	id serial PRIMARY KEY,
	title varchar(40) NOT NULL,
	track_length integer,
	album_id integer REFERENCES albums(id)
);
CREATE TABLE IF NOT EXISTS collections (
	id serial PRIMARY KEY,
	title varchar(40) NOT NULL,
	released integer CHECK (released < 2100)
);
CREATE TABLE IF NOT EXISTS track_collection (
	track_id integer REFERENCES tracks(id),
	collection_id integer REFERENCES collections(id),
	CONSTRAINT track_collection_pk PRIMARY KEY (track_id, collection_id) 
);
