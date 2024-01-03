class Dbsetup < ActiveRecord::Migration[7.0]
  def change

    create_table :albums do |t|
      t.string    :title
      t.integer   :artist_id
      t.timestamps
    end

    create_table :artists do |t|
      t.string    :name
      t.timestamps
    end

    create_table :customers do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :company
      t.string    :address
      t.string    :city
      t.string    :state
      t.string    :country
      t.string    :postal_code
      t.string    :phone 
      t.string    :fax 
      t.string    :email 
      t.integer   :support_rep_id
      t.timestamps
    end

    create_table :employees do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :title
      t.integer   :reports_to
      t.datetime  :birth_date 
      t.datetime  :hire_date 
      t.string    :address
      t.string    :city
      t.string    :state
      t.string    :country
      t.string    :postal_code
      t.string    :phone 
      t.string    :fax 
      t.string    :email
      t.timestamps
    end

    create_table :genres do |t|
      t.string    :name
      t.timestamps
    end

    create_table :invoices do |t|
      t.integer   :customer_id
      t.datetime  :invoice_date
      t.string    :billing_address
      t.string    :billing_city
      t.string    :billing_state
      t.string    :billing_country
      t.string    :billing_postal_code
      t.float     :total
      t.timestamps
    end

    create_table :invoice_lines do |t|
      t.integer   :invoice_id
      t.integer   :track_id
      t.float     :unit_price
      t.integer   :quantity 
      t.timestamps
    end

    create_table :media_types do |t|
      t.string    :name
      t.timestamps
    end

    create_table :playlists do |t|
      t.string  :name
      t.timestamps
    end

    create_table :playlists_tracks, :id => false, :force => true do |t|
      t.integer :playlist_id
      t.integer :track_id
      t.timestamps
    end

    create_table :tracks do |t|
      t.string    :name
      t.integer   :album_id
      t.integer   :media_type_id
      t.integer   :genre_id
      t.string    :composer
      t.integer   :milliseconds
      t.integer   :bytes 
      t.float     :unit_price
      t.timestamps
    end

  end
end
