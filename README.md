# README

## Questions

Maintenant que ta BDD est prête, tu vas répondre aux questions ci-dessous :

## Niveau facile

* Quel est le nombre total d'objets Album contenus dans la base (sans regarder les id bien sûr) ?

Album.count

* Qui est l'auteur de la chanson "White Room" ?

rack.where(title:"White Room")

* Quelle chanson dure exactement 188133 milliseconds ?

Track.where(Duration:188133)

* Quel groupe a sorti l'album "Use Your Illusion II" ?

Album.find_by(Title:"Use Your Illusion II")
artiste.artist

## Niveau Moyen

* Combien y a t'il d'albums dont le titre contient "Great" ? (indice)

Album.where("title LIKE ?", "%Great%").count

* Supprime tous les albums dont le nom contient "music".

Album.where("title LIKE ?", "%Great%").destroy_all

* Combien y a t'il d'albums écrits par AC/DC ?

Album.where(artist:"AC/DC").count

* Combien de chanson durent exactement 158589 millisecondes ?

Track.where(duration: 158589).count

## Niveau Difficile

* puts en console tous les titres de AC/DC.

acdc_tracks = Track.where(artist: "AC/DC")
acdc_tracks.each do |track|
  puts track.title
end

* puts en console tous les titres de l'album "Let There Be Rock".

ltbr = Track.where(album: "Let There Be Rock")
ltbr.each do | track |
  puts track.title
end

* Calcule le prix total de cet album ainsi que sa durée totale.
price = 0
duration = 0
ltbr = Track.where(album: "Let There Be Rock")

ltbr.each do | track |
   price += track.price
  duration += track.duration
end

puts "Price: $#{price.round(1)}"
puts "Duration: #{duration} ms"

* Calcule le coût de l'intégralité de la discographie de "Deep Purple".

price = 0
all_tracks = Track.where(artist:"Deep Purple")

all_tracks.each do | track |
  price += track.price
end

puts "Price: $#{price.round(1)}"

* Modifie (via une boucle) tous les titres de "Eric Clapton" afin qu'ils soient affichés avec "Britney Spears" en artist.

ec_tracks = Track.where(artist:"Eric Clapton")
ec_tracks.each do | track |
  track.artist = "Britney Spears"
  end
