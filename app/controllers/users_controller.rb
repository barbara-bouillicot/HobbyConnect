class UsersController < ApplicationController
  def index
    @users = User.search(params[:search])
  end

  def show
    @user = User.find(params[:id])
    @event = Event.new
    @events = @user.events
    @requests = Request.where(user_id: current_user.id)
    @hobbies = @user.hobbies
  end
end
