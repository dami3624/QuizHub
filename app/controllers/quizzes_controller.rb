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
<<<<<<< HEAD
  	params.require(:quiz).permit(:user_id, :title, :category)
=======
  	params.require(:quiz).permit(:title, :category)
>>>>>>> 49838d9b3bde7a48a60c824717996afc7080b738
  end
end
