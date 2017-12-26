require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Check attributes" do

    it "Song has a name" do
      song = Song.new(name: "Check out the daisy's")
      expect(song.name).to include(song.name)
    end
  end

  describe "Check validations" do
    song = Song.new(name: nil, artist: nil)

    it "is invalid without a name" do
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid without a artist" do
      song.valid?
      expect(song.errors).to have_key(:artist)
    end
  end
end
