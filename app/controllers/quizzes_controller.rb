class QuizzesController < ApplicationController

  layout 'temp'
  before_action :find_user
	#@dami = sessions[:user_id]
  def index
  end
  
  def new
  	@quiz = Quiz.new
  end
	
  def show
  		#@dami = sessions[:user_id]
  		#@quizs = Quiz.where(user_id: @dami)
  		@quiz = @user.quizzes
  end


  def create
  	  	@quiz = Quiz.new(quiz_params)
  	if @quiz.save
  		redirect_to url_for(:controller => :questions, :action => :index, :qid => @quiz.id)
  	end
  end

  def home
    
  end

 
  def destroy
    @quiz = Quiz.find(params[:id]).destroy
    redirect_to(:controller => :quizzes, :action => :home)
  end

  def quest
  end


    private

  def quiz_params

  	params.require(:quiz).permit(:user_id, :title, :category)
  end

  def find_user
  
  	if session[:user_id]
  		@user = User.find session[:user_id]
  	end
  end
end
