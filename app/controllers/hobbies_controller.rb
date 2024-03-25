class HobbiesController < ApplicationController
  def index
    if params[:search].present?
      @hobbies = Hobby.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @hobbies = Hobby.all
    end
  end

  def show
    @hobby = Hobby.find(params[:id])
  end
end
