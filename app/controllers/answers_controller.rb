# frozen_string_literal: true

class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)

    @answer.user_id = current_user.id
    if @answer.save
      redirect_to question_path(params[:question_id])
    else
      render 'questions/show'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:description, :question_id)
  end
end
