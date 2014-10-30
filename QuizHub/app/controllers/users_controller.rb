class UsersController < ApplicationController
	layout 'temp'
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to url_for(:controller => :sesions, :action => :new)
  	else
  		render "new"
  	end
  end

  def home
  	render "home"
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
