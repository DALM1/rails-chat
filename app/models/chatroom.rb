# app/models/chatroom.rb
class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_and_belongs_to_many :users
end
