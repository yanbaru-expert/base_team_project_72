class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to messages_path
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
