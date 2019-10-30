# frozen_string_literal: true

class Answer < ApplicationRecord
  has_many :comments
  belongs_to :question
  belongs_to :user
end
