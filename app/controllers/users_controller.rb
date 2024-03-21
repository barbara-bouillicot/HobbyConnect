class UsersController < ApplicationController

  def index
    if params[:search].present?
      @users = User.search(params[:search]).joins(:hobbies).distinct.where(hobbies: { id: current_user.hobbies.ids })
    else
      @users = User.joins(:hobbies).distinct.where(hobbies: { id: current_user.hobbies.ids })
    end
  end

  def show
    @user = User.find(params[:id])
    @event = Event.new
    @events = @user.events
    @hobbies = @user.hobbies
    @chatroom = Chatroom.new
  end
end
