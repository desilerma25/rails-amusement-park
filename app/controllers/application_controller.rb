class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  # methods here used in controllers

  def redirect_if_not_logged_in
    redirect_to '/' if !logged_in?
  end

  def user_params
    params.require(:user).permit(:name, :height, :tickets, :nausea, :admin, :happiness, :password)
  end

end
