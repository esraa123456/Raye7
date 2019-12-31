class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend Enumerize

  enumerize :role, in: {:driver => 1, :passenger => 2}

  validates :full_name, :phone, presence: true
  validates_length_of :full_name, :minimum => 6, :allow_blank => true
  validates :phone, uniqueness: true
end
