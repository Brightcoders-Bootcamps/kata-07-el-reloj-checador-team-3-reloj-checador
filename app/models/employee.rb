class Employee < ApplicationRecord
  has_many :reports
  enum status: [:active, :inactive]
end
