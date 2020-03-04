require('pry')
require_relative('../models/artist')
require_relative('../models/album')

Artist.delete_all

artist1 = Artist.new({'name' => 'Sting'})
artist1.save

artist2 = Artist.new({'name' => 'Lady Gaga'})
artist2.save

binding.pry

nil
