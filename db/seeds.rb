require 'csv'

folder = File.expand_path('csv', __dir__)
puts "Importing CSV files from #{folder}"

return unless File.directory?(folder)

# model in cascade order for import
models = ['Artist', 'Album', 'Employee', 'Customer', 'Genre', 'MediaType', 'Track', 'Invoice', 'InvoiceLine', 'Playlist', 'PlaylistsTrack']

models.each do |model|
  entry = File.join(folder, "#{model}.csv")
  # read csv and import
  puts "Importing #{entry}"
  modelName = File.basename(entry, File.extname(entry))
  klass = modelName.classify.constantize rescue nil
  next unless klass

  CSV.foreach(entry, headers: true) do |row|
    field_hash = row.to_hash.transform_keys(&:underscore)
    
    if model != 'PlaylistsTrack'
      # id convert: find id field
      id_field = field_hash.keys.find { |k| k.to_s.match(/_id$/) }
      id_value = field_hash[id_field]
      # add id field
      field_hash['id'] = id_value
      # remove original id
      field_hash.delete(id_field)
    end

    # create record
    record = klass.new(field_hash).save(validate: false)
  end

  puts "Imported #{klass.count} #{modelName}"
end
