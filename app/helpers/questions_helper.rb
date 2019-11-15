# frozen_string_literal: true

module QuestionsHelper
  def question_and_answers(params)
    question = Question.find(params[:id])
    answers = question.answers
    active_answers = question.answers.order(created_at: :desc).page params[:aactive_page]
    oldest_answers = question.answers.page params[:oldest_page]
    answers_votes = question.answers.order(votes_for: :asc).page params[:votes_page]
    answers.includes(:comments, :user).each do |a|
      @comment = a.comments.new
    end
    answer = answers.new
    return question, answers, answer, active_answers, oldest_answers, answers_votes
  end

  def create_question(question_params)
    question = Question.new(question_params)
    question.user_id = current_user.id
    question
  end

  def questioner_name(question)
    name = question.user.first_name + question.user.last_name
  end
end
