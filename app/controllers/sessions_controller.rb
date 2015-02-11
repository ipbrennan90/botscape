class SessionsController < ApplicationController
  def new

  end

  def create
    user= User.find_by_name(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]
      redirect_to root_url, notice: "Logged in!"
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_url, notice: "logged out"
  end
end
