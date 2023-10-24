class PostsController < ApplicationController
  def index
    # @posts = Post.all.limit(10) # select * from posts limit 10
    @posts = Post.all.includes(:user)
  end

  def broken
    @posts = Post.all.limit(2)
    expected_to_fail # this method does not exist, so it will raise an exception
  end
end
