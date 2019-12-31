class Place < ApplicationRecord
    validates :name, :longitude, :latitude, presence: true
    validates_uniqueness_of :name
    validates :longitude, uniqueness: { scope: :latitude }
end
