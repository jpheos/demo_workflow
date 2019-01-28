class PostsController < ApplicationController
  def index
    @posts = Post.order(votes: :desc)
  end

  def vote
    @post = Post.find(params[:id])
    @post.update!(votes: @post.votes + 1)
    redirect_back(fallback_location: root_path)
  end
end
