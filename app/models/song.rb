class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :artist_id, presence: true
end
