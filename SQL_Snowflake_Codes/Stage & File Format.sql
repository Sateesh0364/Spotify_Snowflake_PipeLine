--schema

create schema file_formats;

create or replace file format spotify.file_formats.spotify_file_type
    TYPE = CSV
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
    null_if = ('NULL','null')
    empty_field_as_null = TRUE
    ESCAPE_UNENCLOSED_FIELD = '\\'
    FIELD_OPTIONALLY_ENCLOSED_BY = '"';

--stages creation

create schema external_stage;

--album stage

create stage spotify.external_stage.album
    url = 's3://spotify-etl-snowflake-project-sateesh/processed_data/album_data/'      
    storage_integration = s3_init
    file_format = spotify.file_formats.spotify_file_type;

--artist stage

create stage spotify.external_stage.artist
    url = 's3://spotify-etl-snowflake-project-sateesh/processed_data/artist_data/'           
    storage_integration = s3_init
    file_format = spotify.file_formats.spotify_file_type;

--songs stage

create stage spotify.external_stage.song
    url = 's3://spotify-etl-snowflake-project-sateesh/processed_data/song_data/'        
    storage_integration = s3_init
    file_format = spotify.file_formats.spotify_file_type;