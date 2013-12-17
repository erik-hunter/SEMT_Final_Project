Feature: Create a post

	Scenario: User is not signed in
		Given I do not exist as a user
		Then I should not see a create new post link
		
	
	Scenario: User is signed in
		Given I exist as a user
		Then I should see a create new post link
		When I press "create new post"
		Then I should be on the new post page
		And if I create a post with title: Test Title, content: Test Content, and recepients: test@test.com
		Then I should be on the posts page
		And I should see the post listed with title: Test Title, content: Test Content, and recepients: test@test.com
