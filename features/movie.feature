Feature: Movie
In order to track my clients
As a owner of website
I want to be able to list, create, update, and delete movie information


Background:
Given an initial business

Scenario: List Movie
Given I am on the 'movies' page
Then in the "body", I should see "Movies"
And in the "th", I should see "Name" 
And in the "th", I should see "Genre" 
And in the "th", I should see "Rating" 
And in the "td", I should see "The Ring"
And in the "td", I should see "Horror"
And in the "td", I should see "3"
And in the "body", I should see a link to "New Movie"
 
 
 Scenario: Create Movie
 Given I am on the 'new movie' page
 When I enter "The Ring" for "Name"
 And I select "Horror" for "Genre"
 And I enter "3" for "Rating"
 And I enter "130" for "Duration"
 And I select "English" for "Language"
 And I enter "This is a note" for "Cast"
 And I enter "This is a note" for "Description"
 And I click "Create Movie"
 Then I should see "Movie was successfully created."

Scenario: Update Movie
      Given I am on the 'movies' page
      When I follow the "Edit" link for "The Ring"
      And I change the name "The Ring" to "The only Ring"
      And I click "Update Movie"
      Then I should see "Movie was successfully updated."

   Scenario: Delete Movie 
       Given I am on the 'movies' page
       When I follow the "Destroy" link for "The Ring"
       Then I should not to see "The Ring"
