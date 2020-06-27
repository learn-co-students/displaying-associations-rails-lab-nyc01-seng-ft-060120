# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

artists = []
10.times do 
    a = Artist.create(name: Faker::FunnyName.name) 
    artists << a
end

30.times do
    Song.create(title: Faker::Hipster.word, artist: artists.sample)
end