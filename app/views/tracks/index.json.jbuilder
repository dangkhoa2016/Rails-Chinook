json.array!(@tracks) do |track|
  json.extract! track, :name, :album_id, :media_type_id, :genre_id, :composer, :milliseconds, :bytes, :unit_price
  json.url track_url(track, format: :json)
end
