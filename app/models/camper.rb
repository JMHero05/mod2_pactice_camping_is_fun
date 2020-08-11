class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, inclusion: { in: 8..18,
    message: "must between 8 and 18" }
end
