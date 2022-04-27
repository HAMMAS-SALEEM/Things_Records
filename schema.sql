CREATE TABLE Author(
    id INT CONSTRAINT ID_Author_PK PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE Games(
    id INT CONSTRAINT ID_Games_PK PRIMARY KEY,
    multiplayer VARCHAR(50),
    last_played_at DATE,
    publish_date DATE,
    archived BOOLEAN,
    author_id COSTRAINT author-id_FK REFERENCES Author(ID) 
);