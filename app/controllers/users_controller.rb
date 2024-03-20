class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @event = Event.new
    @events = @user.events
    @hobbies = @user.hobbies
  end

end
