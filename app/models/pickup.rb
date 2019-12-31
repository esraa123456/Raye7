class Pickup < ApplicationRecord
    belongs_to :passenger, class_name: 'User', foreign_key: :passenger_id
    belongs_to :place

    validate :departure_time_cannot_be_in_the_past

    def departure_time_cannot_be_in_the_past
        if departure_time.present? && departure_time < Date.today
            errors.add(:departure_time, "can't be in the past")
        end
    end 
end
