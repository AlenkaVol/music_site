CREATE TABLE IF NOT EXISTS Genre (
	id_genre SERIAL PRIMARY KEY,
	name_genre VARCHAR (60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Singer (
	id_singer SERIAL PRIMARY KEY,
	name_singer VARCHAR (60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Singer_Genre (
	genre_id INTEGER NOT NULL REFERENCES Genre(id_genre),
	singer_id INTEGER NOT NULL REFERENCES Singer(id_singer), 
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR (80) NOT NULL, 
	release_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_Album (
	album_id INTEGER NOT NULL REFERENCES Album(id_album),
	singer_id INTEGER NOT NULL REFERENCES Singer(id_singer), 
	CONSTRAINT pk2 PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id_track SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id_album), 
	name_track VARCHAR (80) NOT NULL, 
	track_length INTERVAL NOT NULL
);

CREATE TABLE IF NOT EXISTS Compilation (
	id_compilation SERIAL PRIMARY KEY,
	name_compilation VARCHAR (80) NOT NULL, 
	release_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Compilation_Track (
	compilation_id INTEGER NOT NULL REFERENCES Compilation(id_compilation),
	track_id INTEGER NOT NULL REFERENCES Track(id_track), 
	CONSTRAINT pk3 PRIMARY KEY (compilation_id, track_id)
);


