class QuizzesController < ApplicationController
  layout 'temp'
  def new
  	@quiz = Quiz.new
  end

  def create
  end
end
