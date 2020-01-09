class LogSerializer < ActiveModel::Serializer
  attributes :id, :workouts, :time
end
