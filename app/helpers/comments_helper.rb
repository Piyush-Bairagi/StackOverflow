# frozen_string_literal: true

module CommentsHelper
  def commenter_name(comment)
    name = comment.user.first_name + comment.user.last_name
  end
end
