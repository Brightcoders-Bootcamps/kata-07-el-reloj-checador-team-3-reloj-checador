class Report < ApplicationRecord
  belongs_to :employee
  enum check_type: [:check_in, :check_out]
end
