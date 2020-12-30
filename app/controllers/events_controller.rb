class EventsController < ApplicationController
  before_action :set_item, only: [:destroy, :show, :update, :edit]

  def index
    @events = Event.all
    @message = Message.all
  end

  def new
    @event = Event.new
  end


  def create
    Event.create(event_parameter)
    redirect_to events_path
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(event_parameter)
    @event.save
    redirect_to events_path
    else
      render :edit 
    end

  end


  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def event_parameter
    params.require(:event).permit(:name, :phone_number, :member, :start_time, :content)
  end

  def set_item
    @event = Event.find(params[:id])
  end
end
