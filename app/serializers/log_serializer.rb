class LogSerializer < ActiveModel::Serializer
  attributes :id, :workouts, :time
  has_many :comments
end
