# frozen_string_literal: true

class QuestionsController < ApplicationController
  include QuestionsHelper
  def index
    @questions = Question.all
  end

  def show
    @question, @answers, @answer = question_and_answers(params)
  end

  def new
    @question = Question.new
  end

  def create
    @question = create_question(question_params)
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
