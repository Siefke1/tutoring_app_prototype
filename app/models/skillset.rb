class Skillset < ApplicationRecord
  SKILLS = ["Coding", "Consulting", "Finaces", "Management"]
  belongs_to :employee
  validates :expertise, presence: true, inclusion: {
    in: SKILLS,
    message: "%{value} is not a valid expertise"
  }
  validates :expertise, uniqueness: { scope: :employee,
    message: "employee can have each skillset once only" }
end
