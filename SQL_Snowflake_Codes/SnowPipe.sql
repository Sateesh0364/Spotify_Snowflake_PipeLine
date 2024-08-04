create or replace schema spotify.pipes;

---------------album_pipe

create or replace pipe spotify.pipes.album_pipe
auto_ingest = True
As
Copy into SPOTIFY.PUBLIC.ALBUM_INFO
From @spotify.external_stage.album
file_format = spotify.file_formats.spotify_file_type;

desc pipe spotify.pipes.album_pipe; 
-- here have to copy 'notification_channel' and to paste in  sqs arn in event 
--trigger bnotification and have to configure in s3 bucket

---------------artist_pipe

create or replace pipe spotify.pipes.artist_pipe
auto_ingest = True
As
Copy into SPOTIFY.PUBLIC.ARTIST_INFO
From @spotify.external_stage.artist
file_format = spotify.file_formats.spotify_file_type;

desc pipe spotify.pipes.artist_pipe; 

-----------------songs_pipe

create or replace pipe spotify.pipes.songs_pipe
auto_ingest = True
As
Copy into SPOTIFY.PUBLIC.SONGS_INFO
From @spotify.external_stage.song
file_format = spotify.file_formats.spotify_file_type;