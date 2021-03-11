class Article < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :title, presence: true
  validates :body, presence: true
end
