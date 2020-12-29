class MessageController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    Message.create(event_parameter)
    redirect_to events_path
  end

  private

  def event_parameter
    params.require(:message).permit(:start_time, :message)
  end
end
