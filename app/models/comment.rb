class Comment < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  belongs_to :blog
end
