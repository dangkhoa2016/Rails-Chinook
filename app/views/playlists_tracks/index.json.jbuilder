json.array!(@playlists_tracks) do |playlists_track|
  json.extract! playlists_track, :playlist_id, :track_id
  json.url playlists_track_url(playlists_track, format: :json)
end
