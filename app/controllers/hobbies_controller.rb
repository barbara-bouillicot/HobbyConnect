class HobbiesController < ApplicationController
  def index
    if params[:search].present?
      @hobbies = Hobby.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @hobbies = Hobby.all
    end
    @events = Event.all
    @users = User.all
    @selected_hobbies = SelectedHobby.all
    @buddies = current_user.chatrooms.map do |chatroom|
      chatroom.asker == current_user ? chatroom.receiver : chatroom.asker
    end
  end

  def show
    @hobby = Hobby.find(params[:id])
  end
end
