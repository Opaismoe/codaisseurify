Artist.destroy_all
Song.destroy_all

artist1 = Artist.create! ({
  name:   "David bowie",
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist2 = Artist.create! ({
  name:   "Rick james",
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist3 = Artist.create! ({
  name:   "Thundercat",
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist4 = Artist.create! ({
  name:   "Bert jansch",
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist5 = Artist.create! ({
  name:   "Mariah carey",
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})
artist6 = Artist.create! ({
  name:   "Gucci mane",
  genre:  Faker::HitchhikersGuideToTheGalaxy.planet,
})


songs_artist1 = []
15.times do
  songs_artist1 << Song.create!(
    name: Faker::Book.title,
    artist: artist1,
  )
end
songs_artist2 = []
15.times do
  songs_artist2 << Song.create!(
    name: Faker::Book.title,
    artist: artist2,
  )
end
songs_artist3 = []
15.times do
  songs_artist3 << Song.create!(
    name: Faker::Book.title,
    artist: artist3,
  )
end
songs_artist4 = []
15.times do
  songs_artist4 << Song.create!(
    name: Faker::Book.title,
    artist: artist4,
  )
end
songs_artist5 = []
15.times do
  songs_artist5 << Song.create!(
    name: Faker::Book.title,
    artist: artist5,
  )
end
songs_artist6 = []
15.times do
  songs_artist6 << Song.create!(
    name: Faker::Book.title,
    artist: artist6,
  )
end

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/opaismoe/image/upload/v1514066658/codaisseurify/david-bowie.jpg", artist: artist1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/opaismoe/image/upload/v1514066658/codaisseurify/homeimage.jpg", artist: artist2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/opaismoe/image/upload/v1514066658/codaisseurify/33273-optimized_5984f5e408e0c.jpg", artist: artist3)

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/opaismoe/image/upload/v1514066658/codaisseurify/bert_jansch_1317896252_crop_550x344.jpg", artist: artist4)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/opaismoe/image/upload/v1514066658/codaisseurify/oEwWZE1Y_400x400.jpg", artist: artist5)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/opaismoe/image/upload/v1514066658/codaisseurify/o-GUCCI-MANE-facebook.jpg", artist: artist6)
