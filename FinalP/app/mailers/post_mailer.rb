class PostMailer < ActionMailer::Base
  default from: "semtfinal@gmail.com"
  
  def send_post(post)
  	@post = post
  	@recepients = @post.Recepients
  	@recepientsArray = @recepients.split(', ')
  	mail(to: @recepients, subject: "You have received a post-mortem message.")
	
  end
end
