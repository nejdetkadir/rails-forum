class User < ApplicationRecord
  has_many :articles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :username, presence: true, length: {minimum: 3, maximum: 15}, uniqueness: { case_sensitive: false }
  validates :fullname, presence: true, length: {minimum: 5, maximum: 35}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
