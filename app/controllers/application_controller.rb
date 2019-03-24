class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :require_login
  
  def only_store
    redirect_to '/' if current_store==nil
  end
  
  
  # def require_login
  private

  
 
  #   redirect_to '/login' if !signed_in?
  # end 
end
