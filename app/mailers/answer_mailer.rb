class AnswerMailer < ApplicationMailer
  default from: 'pbairagi@bestpeers.com'

  def answered(question, answer)
    @questioner = question
    @answerer = answer
    @url = 'http://localhost:3000/users/sign_in'
    mail(to: @questioner, subject: "#{@answerer} answered your question.")
  end
end
