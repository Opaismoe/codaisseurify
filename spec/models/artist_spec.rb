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
    song = Song.new(name: nil, artist: nil)

    it "Song is invalid without a name" do
      song.valid?
      expect(song.errors).to have_key(:name)
    end
    it "Song is invalid without a artist" do
      song.valid?
      expect(song.errors).to have_key(:artist)
    end
  end

  describe "Association with songs" do
    let!(:artist)   { create :artist }
    let!(:song)     { create :song, artist: artist}

    it "Artist has an song" do
      expect(artist.songs).to include(song)
    end
  end
end
