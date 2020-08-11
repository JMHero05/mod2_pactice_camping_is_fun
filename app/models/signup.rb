class Signup < ApplicationRecord
  belongs_to :activity
  belongs_to :camper

  validates :time, inclusion: { in: (0..23),
    message: "%{value} is invalid and must be between 0 and 23" }
end
