# frozen_string_literal: true

class Question < ApplicationRecord
  validates :title, :description, presence: true
  has_many :answers, dependent: :destroy
  belongs_to :user
  
  paginates_per 5
end
