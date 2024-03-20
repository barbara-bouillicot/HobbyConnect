class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    if params[:search].present?
      @chatrooms = Chatroom.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @chatrooms = Chatroom.all
    end
  end

end
