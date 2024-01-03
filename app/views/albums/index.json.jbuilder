json.array!(@albums) do |album|
  json.extract! album, :title, :artist_id
  json.url album_url(album, format: :json)
end
