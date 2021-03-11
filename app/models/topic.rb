class Topic < ApplicationRecord
  has_many: articles
  
  validates :name, presence: true
end
