class Employee < ApplicationRecord
has_many :report_id
enum status: [:active, :inactive]
end
