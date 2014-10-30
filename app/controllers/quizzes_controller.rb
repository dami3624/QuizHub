class QuizzesController < ApplicationController
  layout 'temp'
  def new
  	@quiz = Quiz.new
  end

  def create
  	  	@quiz = Quiz.new(quiz_params)
  	if @quiz.save
  		redirect_to :action => 'quest'
  	else
  		render "new"
  	end
  end

  def quest
  end


    private

  def quiz_params
  	params.require(:quiz).permit(:title, :category)
  end
end
