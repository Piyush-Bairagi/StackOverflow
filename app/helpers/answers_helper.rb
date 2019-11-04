# frozen_string_literal: true

module AnswersHelper
  def fetch_answers(params, answer_params)
    question = Question.find(params[:question_id])
    answer = question.answers.new(answer_params)

    answer.user_id = current_user.id
    answer
  end
end
