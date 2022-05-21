class Employee < ApplicationRecord
  has_many :skillsets, dependent: :destroy
  validates :name, presence: true
end
