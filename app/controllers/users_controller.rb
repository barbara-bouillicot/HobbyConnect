class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
    @hobbies = @user.hobbies
  end
end
