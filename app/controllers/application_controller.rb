class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_if_authenticated

  def check_if_authenticated
    if (session[:user].nil?)
      redirect_to "/"
    end
  end
end
