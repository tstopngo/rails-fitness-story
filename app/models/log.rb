class Log < ApplicationRecord
  has_many :comments
  validates :workouts, presence: true
  validates :time, presence: true
end
