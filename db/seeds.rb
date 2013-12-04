# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup, :confirmed_at => DateTime.now
puts 'user: ' << user.name

puts 'DEFAULT POSTS'
post = Post.create!(:Title => "This is a test post", :Content => "I am dead dude", :Recepients => "badcommando@gmail.com", :created_at => DateTime.now, :updated_at => DateTime.now, :user_id => 1)
puts 'post: ' << post.Title
