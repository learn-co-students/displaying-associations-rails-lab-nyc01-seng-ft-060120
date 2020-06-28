# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
Song.delete_all

drake = Artist.create(name: "Drake")
adele = Artist.create(name: "Adele")
hotline_bling = Song.create(title: "Hotline Bling", artist_id: drake.id)
hello = Song.create(title: "Hello", artist_id: adele.id)
gods_plan = Song.create(title: "God's Plan", artist_id: drake.id)
someone = Song.create(title: "Someone Like You", artist_id: adele.id)