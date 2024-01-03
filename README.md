# README
  - setup database: `rails db:drop db:create db:migrate db:seed`


## Questions

Now that your database is ready, you will answer the questions below:

## Easy level

* What is the total number of Album objects contained in the database (without looking at the IDs of table) ?

Album.count

* Who is the author of the song "White Room" ?

Track.where(title: "White Room")

* Which song lasts exactly 188133 milliseconds ?

Track.where(duration: 188133)

* Which band released the album "Use Your Illusion II"?

Album.find_by(title: "Use Your Illusion II").artist

## Average level

* How many albums are there with “Great” in the title? (hint)

Album.where("title LIKE ?", "%Great%").count

* Deletes all albums with "music" in the name.

Album.where("title LIKE ?", "%Great%").destroy_all

* How many albums are there written by AC/DC?

Album.where(artist: "AC/DC").count

* How many songs are exactly 158589 milliseconds long?

Track.where(duration: 158589).count

## Difficult Level

* puts all AC/DC titles on console.

acdc_tracks = Track.where(artist: "AC/DC")
acdc_tracks.each do |track|
  puts track.title
end

* puts into console all the titles of the album "Let There Be Rock".

ltbr = Track.where(album: "Let There Be Rock")
ltbr.each do | track |
  puts track.title
end

* Calculate the total price of this album as well as its total duration.
price = 0
duration = 0
ltbr = Track.where(album: "Let There Be Rock")

ltbr.each do | track |
   price += track.price
  duration += track.duration
end

puts "Price: $#{price.round(1)}"
puts "Duration: #{duration} ms"

* Calculates the cost of the entire "Deep Purple" discography.

price = 0
all_tracks = Track.where(artist: "Deep Purple")

all_tracks.each do | track |
  price += track.price
end

puts "Price: $#{price.round(1)}"

* Modifies (via a loop) all "Eric Clapton" titles so that they are displayed with "Britney Spears" as artist.

ec_tracks = Track.where(artist: "Eric Clapton")
ec_tracks.each do | track |
  track.artist = "Britney Spears"
  end
