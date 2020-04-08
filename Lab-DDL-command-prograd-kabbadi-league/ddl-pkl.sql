-- PROGRESSION - 1


-- 1. **Create table city**
create table city
(
id number(11) primary key,
name varchar(100) not null
);



-- 2. **Create table referee**
create table referee
(
id number(11) primary key,
name varchar(100) not null
);


-- 3. **Create table innings**

create table innings
(
id number(11) primary key,
innings_number number(11) not null
);
-- 4. **Create table extra_type**
create table extra_type
(
id number(11) primary key,
name varchar(20) not null
);

-- 5. **Create table skill**

create table skill
(
id number(11) primary key,
name varchar(20) not null
);
-- 6. **Create table team**
create table team
(
id number(11) primary key,
name varchar(50) not null,
coach varchar(50) not null,
home_city number,
caption number(11)
);

-- 7. **Create table player**
create table player
(
id number(11) primary key,
name varchar(50) not null,
country varchar(50) not null,
team_id number,
skill_id number
);
-- 8. **Create table venue**
create table venue
(
id number(11) primary key,
stadium_name varchar(50) not null,
city_id number
);
-- 9. **Create table event**

create table event
(
id number(11) primary key,
innings_id number,
event_no number(11) not null,
raider_id number,
raid_points number (11) not null,
depending_points number(11) not null,
clock_in_seconds number(11) not null,
team_one_score number(11) not null,
team_two_score number(11) not null
);
-- 10. **Create table extra_event**
create table extra_event
(
id number(11) primary key,
event_id number,
event_type_id number,
point number(11) not null,
scoring_team_id number(11)
);
-- 11. **Create table outcome**
create table outcome
(
id number(11) primary key,
status varchar(100) not null,
winner_team_id number(11),
score number(11),
player_of_match number(11)
);

-- 12. **Create table game**
create table game
(
id number(11) primary key,
game_date DATE,
team_id_1 number(11),
team_id_2 number(11),
venue_id number(11),
outcome_id number(11),
referee_id_1 number(11),
referee_id_2 number(11),
first_innings_id number(11),
second_innings_id number(11)
);
-- 13. **Drop table city**
drop table city;
-- 14. **Drop table innings**
drop table innings;
-- 15. **Drop table skill**
drop table skill;
-- 16. **Drop table extra_type**
drop table extra_type;