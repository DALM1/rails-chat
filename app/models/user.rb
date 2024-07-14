class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true

  has_one_attached :avatar

  has_and_belongs_to_many :chatrooms
  has_many :messages
end
