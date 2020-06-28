# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# make artists
print "delete artists..."
Artist.destroy_all
puts "deleted"
print "delete songs..."
Song.destroy_all
puts "deleted"


10.times do
  Artist.create(name: Faker::Music.band)
end
puts "created artists"

Artist.all.each do |artist|
  3.times do
    artist.songs << Song.create(title: Faker::Music.album)
  end
end
puts "gave 'em some songs"