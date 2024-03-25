class EventsController < ApplicationController

  def index
    @events = Event.all
    if params[:search].present?
      @events = Event.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
    @request = Request.new
    @requests = @event.requests
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to user_path(current_user), notice: 'Event was successfully created.'
    else
      respond_to do |format|
        format.html { render :new }
        format.turbo_stream { render turbo_stream: turbo_stream.update('eventAddModal', partial: 'events/new', locals: { event: @event }) }
      end
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @persisted = @event.update(event_params)
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      # format.text { render partial: "events/event_modal", locals: {event: @event}, formats: [:html] }
      format.json
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_path(current_user), notice: "Event successfully deleted!"
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :date, :description, :user_id, :hobby_id)
  end
end
