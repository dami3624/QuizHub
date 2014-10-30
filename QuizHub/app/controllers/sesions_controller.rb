class SesionsController < ApplicationController
  layout 'temp'

  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      session[:email] = user.email
      redirect_to url_for(:controller => :users, :action => :home), :notice => "Logged in user #{session[:email]}!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
end
