class Comment < ApplicationRecord
  belongs_to :log
  validates :text, prescence: true
end
