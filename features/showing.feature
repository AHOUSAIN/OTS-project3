Feature: showing
  In order to signup for a movie
  As a user
  I want to register


Background:
Given an initial business

Scenario: List Showings
      Given I am on the 'Showings' page
      Then in the "title", I should see "Showings"
      And in the "th", I should see "Type"
      And in the "th", I should see "Time"
      And in the "body", I should see a link to "New Showing"

 Scenario: 'new' Showing
			Given I am on the 'new ' page
			When I select "3D" for "Type"
			And I select "02" for "Time"
			And I select "02" for "Movie"
			And I click "Create Showing"
			Then I should see "Showing was successfully created."

Scenario: Update Showing
	    Given I am on the 'Showings' page
		When I follow the "Edit" link for "3D"
		And I change the type "1" to "2"
		And I click "Update"
		Then I should see "Showing was successfully updated"
	
Scenario: Delete Showing
		Given I am on the 'Showings' page
		When I follow the "Destroy" link for "3D"
		Then I should not to see "3D"