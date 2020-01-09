class Log < ApplicationRecord
  has many :comments
  validates :workouts, prescence: true
  validates :time, prescence :true
end
