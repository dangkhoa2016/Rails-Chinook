class FixTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :tracks, :Tracks
  end
end
