Artist.destroy_all
Song.destroy_all

artists = []
60.times do
  artists << Artist.create!(
    name:   Faker::Name.name,
    genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
  )
end

songs = []
artists.each do |artist|
  songs << Song.create!(
    name:   Faker::Name.name,
    artist: artist,
  )
end
