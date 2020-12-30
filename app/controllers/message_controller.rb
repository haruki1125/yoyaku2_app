class MessageController < ApplicationController
  before_action :set_item, only: [:destroy, :show, :update, :edit]

  def index
    @message = Message.new
  end

  def create
    Message.create(event_parameter)
    redirect_to events_path
  end

  
    def show
    end
    
    def edit
    end

    def update
      if @message.update(event_parameter)
      @message.save
      redirect_to events_path
      else
        render :edit 
      end
    end

    def destroy
      @message.destroy
      redirect_to events_path
    end

  

  private

  def event_parameter
    params.require(:message).permit(:start_time, :message)
  end

  def set_item
    @message = Message.find(params[:id])
  end

end
