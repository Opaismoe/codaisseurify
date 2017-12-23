FactoryBot.define do
  factory :artist do
    name      { Faker::Name.name }
    genre     { Faker::HitchhikersGuideToTheGalaxy.planet }
  end
end
