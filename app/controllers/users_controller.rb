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
    @events = @user.events
    @hobbies = @user.hobbies
  end
end
