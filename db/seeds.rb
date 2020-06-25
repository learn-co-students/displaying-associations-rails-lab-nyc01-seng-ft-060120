5.times do |artist|
  Artist.create(
    name: "Artist name #{artist}"
  )
end

10.times do |song|
  Song.create(
    title: "Song title #{song}",
    artist_id: Artist.last.id
  )
end