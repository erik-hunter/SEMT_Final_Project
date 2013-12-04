class PostController < ApplicationController
  def create
  end
  
  def index
    @posts = Post.all
  end
end
