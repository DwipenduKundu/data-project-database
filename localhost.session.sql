--1 Total runs scored by team
select batting_team,
    sum(total_runs)
from deliveries
GROUP BY batting_team;
-------------------------------


-- 2 Top batsman for Royal Challengers Bangalore
select batsman,
    sum(batsman_runs) as run
from deliveries
where batting_team = 'Royal Challengers Bangalore'
GROUP BY batsman
order by sum(total_runs) DESC
LIMIT 10;
-------------------------------


-- 3 Foreign umpire analysis
select country,
    count(umpire_name) as umpire_count
from umpires
where country != 'India'
GROUP BY country;
-------------------------------


-- 4.Stacked chart of matches played by team by season
select season,
    team,
    count(*) as played
from (
        SELECT team1 as team,
            season
        from matches
        union all
        select team2 as team,
            season
        from matches
    ) as all_teams
GROUP BY team,
    season
order by season ASC;
-------------------------------


-- 5.Number of matches played per year for all the years in IPL.
select season,
    count(season) as player
from matches
GROUP By season
ORDER BY season;
-------------------------------


-- 6.Number of matches won per team per year in IPL.
SELECT season,
    winner,
    count(winner) as win
from matches
where winner is not null
GROUP BY season,
    winner
order by season,
    winner;
-------------------------------


-- 7.Extra runs conceded per team in the year 2016
select d.bowling_team,
    sum(d.extra_runs) as Extra_Runs
from deliveries d
    JOIN matches m on m.id = d.match_id
where m.season = 2016
GROUP BY bowling_team;
-----------------------------


-- 8.Top 10 economical bowlers in the year 2015
select d.bowler,
    round(sum(d.total_runs) / (count(*) / 6.0), 2) as economy
from deliveries d
    Join matches m on d.match_id = m.id
where m.season = 2015
GROUP BY d.bowler
ORDER BY economy DESC
limit 10;