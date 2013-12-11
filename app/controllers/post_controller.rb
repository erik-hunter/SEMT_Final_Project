class PostController < ApplicationController
  def create
  	params[:post][:user_id] = current_user.id
  	if @post = Post.create(params[:post])
  		@post.user_id = current_user.id
  		redirect_to '/'
  	else
  		redirect_to new_post_path
  	end
  end
  
  def new
  	@post = Post.new
  end
  
  def index
    @posts = Post.all
  end
end
