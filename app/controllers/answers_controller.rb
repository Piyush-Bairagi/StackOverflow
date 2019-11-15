# frozen_string_literal: true

class AnswersController < ApplicationController
  include AnswersHelper

  def create
    respond_to do |format|
      format.js
      format.html
    end

    question, answer = fetch_answers(params, answer_params)
    if answer.save
      questioner_email = question.user.email
      answerer_first_name = answer.user.first_name
      AnswerMailer.answered(questioner_email, answerer_first_name).deliver_now
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
