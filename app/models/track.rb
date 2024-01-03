class Track < ApplicationRecord
  belongs_to :genre

  belongs_to :album
  has_one :artist, through: :album

  belongs_to :media_type

  has_and_belongs_to_many :playlists

  has_many :invoice_lines
end
