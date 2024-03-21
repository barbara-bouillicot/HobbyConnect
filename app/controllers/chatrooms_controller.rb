class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.all
    if params[:search].present?
      @chatrooms = Chatroom.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @chatrooms = Chatroom.all
    end
  end

  def new
    @chatroom = Chatroom.new
    @receiver = User.find(params[:id])
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatrooms_path, notice: 'Connection requested!'
    else
      render "chatrooms/_new", status: :unprocessable_entity
    end
  end

  def update
    @chatroom = Chatroom.find(params[:id])
    if @chatroom.update(chatroom_params)
      redirect_to  chatrooms_path
    else

      redirect_to  chatrooms_path
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :asker_id, :receiver_id, :status)
  end
end
