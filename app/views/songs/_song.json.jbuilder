json.extract! song, :id, :artist_id, :name, :created_at, :updated_at
json.url artist_song_url(song, :id, format: :json)
