class QuestionsController < ApplicationController
  
  layout 'temp'
  def index
  end

  def create
  	 @question = Question.new(questions_params)
  	if @user.save
  		redirect_to url_for(:controller => :sesions, :action => :new)
  	else
  		render "new"
  	end
  end

    private

  def questions_params
  	params.require(:user).permit(:qid, :quest, :op_1, :op_2, :op_3, :answer)
  end
end
