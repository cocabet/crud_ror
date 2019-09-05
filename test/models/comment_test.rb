require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
  end
  
  test "Comment is not created without a name" do
    comment = Comment.new
    assert_not comment.save
  end
end
