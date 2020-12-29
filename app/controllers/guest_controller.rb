class GuestController < ApplicationController
  def index
    @guest = Message.all
  end
  def new
    @event = Event.new
  end

  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  private

  def event_parameter
    params.require(:event).permit(:name, :phone_number, :member, :start_time, :content)
  end
end
