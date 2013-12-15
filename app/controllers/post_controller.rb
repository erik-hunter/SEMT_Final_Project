class PostController < ApplicationController
  def create
  	params[:post][:user_id] = current_user.id
  	if @post = Post.create(params[:post])
  		@post.user_id = current_user.id
  		
  		PostMailer.send_post(@post).deliver
  		
  		redirect_to '/'
  	else
  		redirect_to new_post_path
  	end
  end
  
  def new
  end
  
  def edit
  	@post = Post.find(params[:id])
  	if(@post.user_id != current_user.id)
  		flash[:alert] = "Cannot view posts from another user!"
  		redirect_to '/'
  	end
  end
  
  def update
    @post = Post.find_by_id(params[:id])
    @post.update_attribute(:Title, params[:post][:Title])
    @post.update_attribute(:Content, params[:post][:Content])
    @post.update_attribute(:Recepients, params[:post][:Recepients])
    
    redirect_to '/'
  end
  
  def index
    @posts = Post.all
  end
end
