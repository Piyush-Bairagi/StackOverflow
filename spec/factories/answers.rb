# frozen_string_literal: true

FactoryBot.define do
  factory :answer do
    description { 'This is the description for the question' }
    number_of_likes { 27 }
    number_of_dislikes { 9 }
    number_of_comments { 8 }
    user_id { 8 }
    question_id { 9 }
  end
end
