DROP DATABASE IF EXISTS  top_songsDB;
CREATE DATABASE top_songsDB;

USE top_songsDB;

CREATE TABLE top5000 (
	-- position | artist name | song name | year | raw popularity (world) | raw popularity (US) | raw popularity (UK) | raw popularity (Europe) | raw popularity (other) --
    id SMALLINT UNIQUE NOT NULL,
    artist VARCHAR(50),
    song VARCHAR(50) NOT NULL,
    year SMALLINT NOT NULL,
    worldPop DECIMAL(5,3) NOT NULL,
    USPop DECIMAL(5,3) NOT NULL,
    UKPop DECIMAL(5,3) NOT NULL,
    EuropePop DECIMAL(5,3) NOT NULL,
    OtherPop DECIMAL(5,3) NOT NULL
);

INSERT INTO top5000 (id, artist, song, year, worldPop, USPop, UKPop, EuropePop, OtherPop)
VALUES(1,"artisttt","nammeeee",1942,39.903,23.929,5.7,2.185,0.54),
(2,"Bill Haley & his Comets","Rock Around the Clock",1955,36.503,19.961,7.458,5.663,0.76),
(3,"Celine Dion","My Heart Will Go On",1998,35.405,12.636,8.944,23.701,3.61);

SELECT * FROM top5000;