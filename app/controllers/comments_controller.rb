# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    respond_to do |format|
      format.js
      format.html
    end

    @answer = Answer.find(params[:answer_id])
    @comment = @answer.comments.new(comment_params)

    @comment.user_id = current_user.id
    if @comment.save!
      redirect_to question_path(params[:id])
    else
      render 'questions/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :answer_id)
  end
end
