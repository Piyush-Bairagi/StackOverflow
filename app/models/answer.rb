# frozen_string_literal: true

class Answer < ApplicationRecord
  validates :description, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :question
  belongs_to :user

  acts_as_votable
end
