# frozen_string_literal: true

class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)

    @comment.user_id = current_user.id
    if @answer.save
      redirect_to question_path
    else
      render 'questions/show'
    end
  end

  def show
    render 'questions/show'
  end

  private

  def answer_params
    params.require(:answer).permit(:description, :question_id)
  end
end
