# frozen_string_literal: true

require 'rails_helper'

describe Answer do
  it { should have_many(:comments) }
  it { should belong_to(:question) }
  it { should belong_to(:user) }
end
