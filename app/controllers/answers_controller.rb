class AnswersController < ApplicationController
  def index
    if params[:question_id]
      @answers = Answer.find(params[:question_id]).includes(:questions).answers
    else
      @answers = Answer.all
    end
  end

  def new
    @answer = Answer.new
  end

  def create
    @question = @question.find(params[id])
    @answer = @question.answers.create(answers_params)

    if @answer.save
      redirect_to @answer
    else
      render 'new'
    end
  end

  def show
    @answer = Answer.find(:id)
  end

  private
    def answers_params
      params.require(:answer).permit(:description)
    end
end
