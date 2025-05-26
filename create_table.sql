CREATE TABLE deliveries (
    match_id INT,
    inning INT,
    batting_team TEXT,
    bowling_team TEXT,
    over INT,
    ball INT,
    batsman TEXT,
    non_striker TEXT,
    bowler TEXT,
    is_super_over INT,
    wide_runs INT,
    bye_runs INT,
    legbye_runs INT,
    noball_runs INT,
    penalty_runs INT,
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    player_dismissed TEXT,
    dismissal_kind TEXT,
    fielder TEXT
);



CREATE TABLE matches (
    id INT PRIMARY KEY,
    season INT,
    city VARCHAR(50),
    date DATE,
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    toss_winner VARCHAR(50),
    toss_decision VARCHAR(10),
    result VARCHAR(20),
    dl_applied INT,
    winner VARCHAR(50),
    win_by_runs INT,
    win_by_wickets INT,
    player_of_match VARCHAR(50),
    venue VARCHAR(100),
    umpire1 VARCHAR(50),
    umpire2 VARCHAR(50),
    umpire3 VARCHAR(50)
);


CREATE TABLE umpires (
    umpire_name VARCHAR(100) PRIMARY KEY,
    country VARCHAR(50)
);
