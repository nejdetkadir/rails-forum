class Article < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
end
