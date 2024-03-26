class HobbiesController < ApplicationController
  def index
    if params[:search].present?
      @hobbies = Hobby.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @hobbies = Hobby.all
    end
    @events = Event.all
    # @events = Event.where(id: hobby_id)
    @users = User.all
  end

  def show
    @hobby = Hobby.find(params[:id])
  end
end
