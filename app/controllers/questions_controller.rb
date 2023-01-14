class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order("created_at DESC")
  end
  def new
    @question = Question.new
  end
  def create
    Question.create(question_params)
  end
  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers
  end
  private
  def question_params
    params.require(:question).permit(:title, :content, :name)
  end
end
