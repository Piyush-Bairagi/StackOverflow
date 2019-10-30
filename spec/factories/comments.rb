FactoryBot.define do
  factory :comment do
    description { 'This is the description for the comment' }
    user_id { 8 }
    answer_id { 9 }
  end
end