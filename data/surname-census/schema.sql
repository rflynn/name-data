-- ex: set ts=4 et:

-- name,rank,count,prop100k,cum_prop100k,pctwhite,pctblack,pctapi,pctaian,pct2prace,pcthispanic
-- SMITH,1,2376206,880.85,880.85,73.35,22.22,0.40,0.85,1.63,1.56

drop table if exists surname_census2000;
create table if not exists surname_census2000 (
    name         varchar(32) not null unique,
    rank         integer     not null,
    count_       integer     not null,
    prop100k     float       not null,
    cum_prop100k float       not null,
    pctwhite     float       not null,
    pctblack     float       not null,
    pctapi       float       not null,
    pctaian      float       not null,
    pct2prace    float       not null,
    pcthispanic  float       not null
);

-- A "Name"
-- Frequency in percent
-- Cumulative Frequency in percent
-- Rank
-- MARY           2.629  2.629      1
-- JAMES          3.318  3.318      1
drop table if exists givenname_census1990;
create table if not exists givenname_census1990 (
    name         varchar(32) not null,
    is_male      integer     not null,
    freq         float       not null,
    cum_freq     float       not null,
    rank         integer     not null,
    unique (name, is_male)
);

-- can't do custom import here because the files are formatted in shitty whitespace-aligned...

