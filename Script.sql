CREATE TABLE IF NOT EXISTS Artists (
	artist_id SERIAL PRIMARY KEY,
	alias VARCHAR(60) UNIQUE NOT NULL
);


CREATE TABLE IF NOT EXISTS Genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(55) UNIQUE NOT NULL
);


CREATE TABLE IF NOT EXISTS Artists_Genres (
	artist_id INTEGER REFERENCES Artists (artist_id),
	genre_id INTEGER REFERENCES Genres (genre_id),
	CONSTRAINT pk_AG PRIMARY KEY (artist_id, genre_id)
);


CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	date DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS Artists_Albums (
	artist_id INTEGER REFERENCES Artists (artist_id),
	album_id INTEGER REFERENCES Albums (album_id),
	CONSTRAINT pk_AA PRIMARY KEY (artist_id, album_id)
);


CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Albums (album_id)
);


CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	date DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS Collections_Tracks (
	collection_id INTEGER REFERENCES Collections (collection_id),
	track_id INTEGER REFERENCES Tracks (track_id),
	CONSTRAINT pk_CT PRIMARY KEY (collection_id, track_id)
);