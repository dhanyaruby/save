class LoginController < ApplicationController

  layout "login", :only => [:show, :create]

  def show
    respond_to do |format|
      format.html
    end
  end

  def create
    @user = User.find_by_user_name_and_password(params[:user_name].strip, params[:password].strip)
    if @user.nil?
      @error = "Invalid Credentials. Try again!"
      render :show
    else
      session[:user] = @user.user_name
      redirect_to dashboard_url
    end
  end

  def destroy
    session[:user] = nil
    redirect_to "/"
  end

end