# frozen_string_literal: true

class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = @question.answers.new

    @comments = @answer.comments
    @comment = @answer.comments.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    @question.user_id = current_user.id
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