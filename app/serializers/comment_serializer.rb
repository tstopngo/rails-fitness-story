class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :logId
  belongs_to :log
end
