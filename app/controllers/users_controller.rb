class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  
    
  def show_declare_dead_page

  	
  	
  	@user_id = nil

  	render '/declare_user_dead.html'
  end
  
  def send_users_posts
  	puts 'SENDING POSTS FOR'
  	puts params[:UserID]
  	@deadUser = User.find(params[:UserID])
  	
  	@deadUserPosts = Post.where(user_id: @deadUser.id)
  	@deadUserPosts.each do |post|
  		PostMailer.send_post(post).deliver
  	end
  	
  	flash[:notice] = "Posts for user #{params[:UserID]} have been sent."
  	redirect_to '/'
  end
  
end
