class QuizzesController < ApplicationController
	#belongs_to :user
	#has_maay :questions

  layout false
  
  def new
  	@quiz = Quiz.new
  end
	
  def show
  		#@quizs = Quiz.where(user: sessions[:user_id])
  end


  def create
  	  	@quiz = Quiz.new(quiz_params)
  	if @quiz.save
  		redirect_to :action => ''
  	else
  		render "new"
  	end
  end

   def home
   	#@to_use = sessions[:user_id]

  	render "home"
  end

  def quest
  end


    private

  def quiz_params
  	params.require(:quiz).permit(:user_id, :title, :category)
  end
end
