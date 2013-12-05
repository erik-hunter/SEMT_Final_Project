Feature: Edit a post

	Scenario: User is not signed in
		Given I do not exist as a user
		Then I should not see a edit post link

	Scenario: User is signed in
		Given I exist as a user
		Then I should see a edit post link
		When I press "edit post"
		Then I should be on the edit post page
        When I change the post content
		And I press "save"
		Then I should be on the posts page
		And My post should be edited
