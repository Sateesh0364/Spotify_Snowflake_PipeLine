import json
import boto3
import os
import spotipy
from spotipy.oauth2 import SpotifyClientCredentials
from datetime import datetime

def lambda_handler(event, context):
    client_id=os.environ.get('client_id')  ## in code credentials are stored in lamda environment variables for privacy
    client_secret=os.environ.get('client_secret')
    client_credentials_manager=SpotifyClientCredentials(client_id=client_id,client_secret=client_secret)
    sp=spotipy.Spotify(client_credentials_manager=client_credentials_manager)
    playlist_link="https://open.spotify.com/playlist/37i9dQZEVXbNG2KDcFcKOF"
    playlist_URI=playlist_link.split("/")[-1]
    data=sp.playlist_tracks(playlist_URI)
    cilent=boto3.client('s3')
    filename="spotify_raw" + str(datetime.now()) + ".json"
    cilent.put_object(
        Bucket="spotify-etl-snowflake-project-sateesh",
        Key="raw_data/to_processed/"+filename,
        Body=json.dumps(data))
    
