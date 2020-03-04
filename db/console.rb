require('pry')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'Sting'})
artist1.save

artist2 = Artist.new({'name' => 'Lady Gaga'})
artist2.save

album1 = Album.new({'title' => 'The Last Ship', 'genre' => 'Rock', 'artist_id' => artist1.id})

album1.save

album2 = Album.new({'title' => 'The Fame', 'genre' => 'Pop', 'artist_id' => artist2.id})
album2.save

album3 = Album.new({'title' => 'Brand New Day', 'genre' => 'Rock', 'artist_id' => artist1.id})
album3.save

artist2.name = 'Madonna'
# artist2.update

binding.pry

nil
