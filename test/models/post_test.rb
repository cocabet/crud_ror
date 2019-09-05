require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "Post should have a title" do
    post = Post.new
    assert_not post.save
   end

   test "capitalize_title return a article with title capitalize" do
     post = Post.new(title: "life")
     post.capitalize_title
     assert_equal "Life", post.title
   end
end
