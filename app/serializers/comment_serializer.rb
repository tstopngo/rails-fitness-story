class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :log_id
  belongs_to :log
end
