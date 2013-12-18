class Post < ActiveRecord::Base
  attr_accessible :Content, :Recepients, :Title, :user_id
  
  belongs_to :User
end
