# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    title { 'This is a title for the question' }
    description { 'This is a description for question' }
    number_of_likes { 22 }
    number_of_dislikes { 12 }
    number_of_answers { 7 }
    user_id { 8 }
  end
end
