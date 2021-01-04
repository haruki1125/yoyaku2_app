class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def create
  end
  
  def new
    @user = User.new
  end

  def destroy
    tweet = User.find(params[:id])
    tweet.destroy
  end


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)
  end
end
