class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  def new
  end
  def create
  end
end
