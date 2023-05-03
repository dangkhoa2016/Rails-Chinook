class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :Albums, :artise, :artist
  end
end
