class Employee < ApplicationRecord
has_many :reports
validates :name, presence: true 
validates :position, presence: true
validates :private_number, presence: true, length: { is: 6 }, numericality: { only_integer: true }, uniqueness: true
end
