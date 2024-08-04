create database spotify;

--album table

create or replace table album_info(
album_id varchar,
album_name varchar(100),
album_release_date datetime,
album_total_tracks int,
album_url varchar);

--artist table

create or replace table artist_info(
artist_id varchar,
artist_name varchar(50),
external_url varchar);

--songs table

create or replace table songs_info(
song_id varchar,
song_name varchar(150),
duration_ms int,
url varchar,
popularity varchar(50),
song_added datetime,
album_id varchar,
artist_id varchar);