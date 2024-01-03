class Playlist < ApplicationRecord
  has_and_belongs_to_many :tracks

  has_many :artists, through: :tracks
end
