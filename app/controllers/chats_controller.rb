class ChatsController < ApplicationController
  def index
    @chats = current_user.chats
    @current_chat = @chats.first
    @new_message = Message.new
  end
end
