class Comment < ApplicationRecord
  belongs_to :log
  validates :text, presence: true
end
