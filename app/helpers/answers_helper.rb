# frozen_string_literal: true

module AnswersHelper
  def fetch_answers(params, answer_params)
    question = Question.find(params[:question_id])
    answer = question.answers.new(answer_params)

    answer.user_id = current_user.id
    return question, answer
  end

  def like_dislike
    answer = Answer.find(params[:id])
    if params[:format] == 'like'
      answer.liked_by current_user
    elsif params[:format] == 'dislike'
      answer.disliked_by current_user
    end
    redirect_to :back
  end

  def answerer_name(answer)
    name = answer.user.first_name + answer.user.last_name
  end
  
end
