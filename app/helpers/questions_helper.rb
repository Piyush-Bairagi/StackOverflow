# frozen_string_literal: true

module QuestionsHelper
  def question_and_answers(params)
    question = Question.find(params[:id])
    answers = question.answers
    answers.includes(:comments, :user).each do |a|
      @comment = a.comments.new
    end
    answer = answers.new
    return question, answers, answer
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
