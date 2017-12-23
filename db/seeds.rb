Artist.destroy_all
Song.destroy_all

artist1 = Artist.create! ({
  name:   Faker::Name.name,
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist2 = Artist.create! ({
  name:   Faker::Name.name,
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist3 = Artist.create! ({
  name:   Faker::Name.name,
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist4 = Artist.create! ({
  name:   Faker::Name.name,
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist5 = Artist.create! ({
  name:   Faker::Name.name,
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist6 = Artist.create! ({
  name:   Faker::Name.name,
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})


songs_artist1 = []
15.times do
  songs_artist1 << Song.create!(
    name: Faker::Name.name,
    artist: artist1,
  )
end
songs_artist2 = []
15.times do
  songs_artist2 << Song.create!(
    name: Faker::Name.name,
    artist: artist2,
  )
end
songs_artist3 = []
15.times do
  songs_artist3 << Song.create!(
    name: Faker::Name.name,
    artist: artist3,
  )
end
songs_artist4 = []
15.times do
  songs_artist4 << Song.create!(
    name: Faker::Name.name,
    artist: artist4,
  )
end
songs_artist5 = []
15.times do
  songs_artist5 << Song.create!(
    name: Faker::Name.name,
    artist: artist5,
  )
end
songs_artist6 = []
15.times do
  songs_artist6 << Song.create!(
    name: Faker::Name.name,
    artist: artist6,
  )
end
