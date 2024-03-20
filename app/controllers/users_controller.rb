class UsersController < ApplicationController

  def index
    @users = User.search(params[:search])
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
    @hobbies = @user.hobbies
  end

end
