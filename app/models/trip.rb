class Trip < ApplicationRecord
    belongs_to :driver, class_name: 'User', foreign_key: :driver_id
    belongs_to :place
    
    validate :no_departure_time_in_the_past
    validates_presence_of :driver, :source_id, :destination_id
    validates :no_of_seats, numericality: { greater_than_or_equal_to: 3 }

    def no_departure_time_in_the_past
        if departure_time.present? && departure_time < Date.today
        errors.add(:departure_time, "can't be in the past")
        end
    end 
end
