class Employee < ApplicationRecord
  has_many :reports, dependent: :destroy
  validates :name, presence: true 
  validates :position, presence: true
  validates :private_number, presence: true
  validates :email, presence: true
end
