class Employee < ApplicationRecord
has_many :reports
validates :name, presence: true 
validates :position, presence: true
validates :private_number, presence: true
validates :email, presence: true
end
