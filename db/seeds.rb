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

user2 = User.find_or_create_by_email :name => "Test User", :email => "test@test.com", :password => "changeme", :password_confirmation => "changeme", :confirmed_at => DateTime.now
puts 'user: ' << user2.name

puts 'DEFAULT POSTS'
post = Post.create!(:Title => "Test post for user 1", :Content => "I am dead dude", :Recepients => "badcommando@gmail.com", :created_at => DateTime.now, :updated_at => DateTime.now, :user_id => 1)
puts 'post: ' << post.Title

post2 = Post.create!(:Title => "Test post for user 1", :Content => "I am dead dude", :Recepients => "jojo@gmail.com", :created_at => DateTime.now, :updated_at => DateTime.now, :user_id => 1)
puts 'post: ' << post2.Title

post3 = Post.create!(:Title => "Test post for user 1", :Content => "I am dead dude", :Recepients => "fredy@gmail.com, george@gmail.com", :created_at => DateTime.now, :updated_at => DateTime.now, :user_id => 1)
puts 'post: ' << post3.Title

post4 = Post.create!(:Title => "Test post for user 2", :Content => "I am dead dude", :Recepients => "john@gmail.com", :created_at => DateTime.now, :updated_at => DateTime.now, :user_id => 2)
puts 'post: ' << post4.Title
