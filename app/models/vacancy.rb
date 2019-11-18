class Vacancy < ApplicationRecord
  validates :title, presence: true
  validates :school, presence: true
  validates :salary, presence: true
  validates :salary, numericality: { only_integer: true }
  validates :description, presence: true
end
