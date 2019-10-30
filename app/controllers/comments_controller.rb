# frozen_string_literal: true

class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:answer_id])
    @comment = @answer.comments.new(comment_params)

    @answer.user_id = current_user.id
    if @comment.save
      redirect_to question_path(@answer)
    else
      render 'questions/show'
    end
  end

  def show
    render 'questions/show'
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :answer_id)
  end
end
