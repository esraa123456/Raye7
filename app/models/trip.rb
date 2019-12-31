class Trip < ApplicationRecord
    validate :no_departure_time_in_the_past
    validates_presence_of :driver, :source_place, :destination_place
    validates :no_of_seats, numericality: { greater_than_or_equal_to: 3 }

    def no_departure_time_in_the_past
        if departure_time.present? && departure_time < Date.today
        errors.add(:departure_time, "can't be in the past")
        end
    end 
end
