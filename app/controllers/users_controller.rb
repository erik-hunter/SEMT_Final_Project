class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  
    
  def show_declare_dead_page
  	render '/declare_user_dead.html'
  end
  
  def send_users_posts
    @deadUser = nil
  	if(params[:UserID] != "")
  		@deadUser = User.find(params[:UserID])
  	elsif(params[:Email] != "")
  		@deadUser = User.where(email: params[:Email]).first
  	elsif(params[:Name] != "")
  		@deadUser = User.where(name: params[:Name]).first
  	else
  		flash[:alert] = "You must fill at least one of the fields below."
  		show_declare_dead_page
  	end
  	
  	if @deadUser.nil?
  		flash[:alert] = "Could not find that user. Please verify the parameters."
  		redirect_to '/declare_user_dead/'
  		return
  	end
  	
  	@deadUserPosts = Post.where(user_id: @deadUser.id)
  	@deadUserPosts.each do |post|
  		PostMailer.send_post(post).deliver
  	end
  	
  	flash[:notice] = "Posts for user #{@deadUser.name} have been sent."
  	redirect_to '/'
  end
  
end
