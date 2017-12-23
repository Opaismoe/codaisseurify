require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "Check attributes" do

    it "Artist has a name" do
      artist = Artist.new(name: "Arthur dent")
      expect(artist.name).to include(artist.name)
    end

    it "Artist has a genre" do
      artist = Artist.new(genre: "LOUD")
      expect(artist.genre).to include(artist.genre)
    end
  end

  describe "Check validations" do
    let!(:artist) {create :artist, name: nil, genre: nil}

    it "is invalid without a name" do
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without a genre" do
      artist.valid?
      expect(artist.errors).to have_key(:genre)
    end
  end

  describe "Association with songs" do
    let!(:artist) { create :artist }
    let!(:song) { create :song, artist: artist}

    it "Artist has an song" do
      expect(artist.songs).to include(song)
    end
  end
end
