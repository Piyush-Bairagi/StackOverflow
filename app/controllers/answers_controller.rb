# frozen_string_literal: true

class AnswersController < ApplicationController
  include AnswersHelper

  def create
    answer = fetch_answers(params, answer_params)
    if answer.save
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
