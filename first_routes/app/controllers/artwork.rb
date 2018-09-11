class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id

  has_many :artwork_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User
end
