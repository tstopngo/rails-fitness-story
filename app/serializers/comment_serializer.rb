class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :logId
end
