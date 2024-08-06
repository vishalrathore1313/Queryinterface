class City < ApplicationRecord
   has_many :employees

   scope :created_in_last_days, ->(days) {where('created_at >= ?',days.days.ago)}

   scope :city_where_employee_live,->{ joins(:employees).distinct}
end
