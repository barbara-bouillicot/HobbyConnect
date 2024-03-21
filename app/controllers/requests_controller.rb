class RequestsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @request = Request.new
    @request.event = @event
    @request.user = current_user
    @request.save

    redirect_to request.referrer, notice: "Request sent"
  end

  def accept
    @request = Request.find(params[:id])
    @request.accepted!
    redirect_to user_path(current_user), notice: "Request accepted"
  end

  def reject
    @request = Request.find(params[:id])
    @request.rejected!
    redirect_to user_path(current_user), notice: "Request rejected"
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def event_params
    params.require(:request).permit(:status)
  end
end
