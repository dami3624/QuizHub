class SesionsController < ApplicationController
  layout 'temp'

  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      session[:email] = user.email
      redirect_to root_url, :notice => "Logged in user #{session[:email]}!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
end