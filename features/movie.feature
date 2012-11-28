Feature:movie
In order to track my clients
As a vet
I want to be able to list, create, update, and delete movie information
Background:
Given an initial business

Scenario: List Movie
Given I am on the 'movies' page
Then in the "body", I should see "Listing movies"
And in the "th", I should see "Name" 
And in the "th", I should see "Genre" 
And in the "th", I should see "Duration" 
And in the "th", I should see "Rating" 
And in the "th", I should see "Language" 
And in the "th", I should see "Cast"
And in the "th", I should see "Description"
And in the "td", I should see "The Ring"
And in the "td", I should see "Horror"
And in the "td", I should see "130"
And in the "td", I should see "3"
And in the "td", I should see "English"
And in the "td", I should see "This is a note"
And in the "td", I should see "This is a note"
And in the "body", I should see a link to "New Movie"
 
 
 Scenario: Create Movie
 Given I am on the 'new owner' page
 When I enter "The Ring" for "Name"
 And I select "Horror" for "Genre"
 And I enter "130" for "Rating"
 And I enter "doha" for "city"
 And I select "English" for "Language"
 And I enter "This is a note" for "Cast"
 And I enter "This is a note" for "Description"
 And I click button "New Movie"
 Then I should see "Movie was successfully created."