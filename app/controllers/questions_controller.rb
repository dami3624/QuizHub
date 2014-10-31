class QuestionsController < ApplicationController
  
  layout 'temp'
  #@id => params[:qid]
  @score = 0
  def index
  	@question = Question.new
  end

  def test
  end

  def create
  	 @question = Question.new(questions_params)
  	if @question.save
  		redirect_to url_for(:action => :index, :id => params[:id])
  	else
  		render "new"
  	end
  end
  def score
  	
  	if params [:op1] == '1'
  		@score = 1
  	else
  		@score  = 0
  	end

  end

    private

  def questions_params
  	#:quiz_id => @id
  	params.require(:question).permit(:quiz_id, :quest, :op_1, :op_2, :op_3, :answer)
  end

end
