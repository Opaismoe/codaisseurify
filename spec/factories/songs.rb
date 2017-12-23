FactoryBot.define do
  factory :song do
    name      { Faker::HitchhikersGuideToTheGalaxy.marvin_quote }
  end
end
