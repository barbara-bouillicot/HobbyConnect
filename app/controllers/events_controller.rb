class EventsController < ApplicationController

  def index
    @events = Event.all
    if params[:search].present?
      @events = Event.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @events = Event.all
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to users_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:costume).permit(:name, :location, :date, :description, :user_id, :hobby_id)
  end
end
