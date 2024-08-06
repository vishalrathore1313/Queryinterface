class Employee < ApplicationRecord
  belongs_to :city
  belongs_to :department
  has_and_belongs_to_many :programming_languages

  enum status: { active:0,inactive:1,on_leave:2}

  scope :inactive_employees,-> {where(status: :inactive)}

  scope :names, ->{where('created_at >= ?',days.days.ago)}

  # default_scope -> {where(name: "mohit")}
end
