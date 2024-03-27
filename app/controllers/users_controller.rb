class UsersController < ApplicationController

  def index
    if params[:search].present?
      @users = User.near(current_user.location, 10).joins(:hobbies).distinct.where(hobbies: { name: params[:search].capitalize })
    else
      @users = User.near(current_user.location, 10).joins(:hobbies).distinct.where(hobbies: { id: current_user.hobbies.ids })
    end
  end

  def show
    @user = User.find(params[:id])
    @event = Event.new
    @events = @user.events
    @requests = Request.where(user_id: current_user.id)
    @hobbies = @user.hobbies
    @chatroom = Chatroom.new
  end
end
