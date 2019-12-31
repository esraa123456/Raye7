class Place < ApplicationRecord
    has_many :trips
    has_many :pickups
    
    validates :name, :longitude, :latitude, presence: true
    validates_uniqueness_of :name
    validates :longitude, uniqueness: { scope: :latitude }
end
