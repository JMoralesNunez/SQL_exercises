CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    team_name VARCHAR(45),
    city VARCHAR(45)
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    player_name VARCHAR(100),
    id_team INT REFERENCES teams(id)
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    local_team INT REFERENCES teams(id),
    visitor_team INT REFERENCES teams(id),
    date DATE,
    result VARCHAR(20)
);

