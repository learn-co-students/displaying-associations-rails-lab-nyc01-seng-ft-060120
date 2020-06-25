# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all 
Song.destroy_all

andy = Artist.create(name: Faker::Music::Phish.musician)
josh = Artist.create(name: Faker::Music::Phish.musician)
brian = Artist.create(name: Faker::Music::Phish.musician)
adam = Artist.create(name: Faker::Music::Phish.musician)
daniel = Artist.create(name: Faker::Music::Phish.musician)
jaclyn = Artist.create(name: Faker::Music::Phish.musician)
serena = Artist.create(name: Faker::Music::Phish.musician)

Song.create(title: Faker::Science.element, artist: andy)
Song.create(title: Faker::Science.element, artist: josh)
Song.create(title: Faker::Science.element, artist: brian)
Song.create(title: Faker::Science.element, artist: adam)
Song.create(title: Faker::Science.element, artist: daniel)
Song.create(title: Faker::Science.element, artist: jaclyn)
Song.create(title: Faker::Science.element, artist: serena)