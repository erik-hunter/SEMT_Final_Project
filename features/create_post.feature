Feature: Create a post

	Scenario: User is not signed in
		Given I do not exist as a user
		Then I should not see a create new post link
		
	
	Scenario: User is signed in
		Given I do exist as a user
		Then I should see a create new post link
		And following the create new post link should take me to the create new post page
		And if I create a post with title: Test Title, content: Test Content, and recepients: test@test.com
		Then I should be returned to the posts page
		And I should see the post listed with title: Test Title, content: Test Content, and recepients: test@test.com
