Given /^an initial business$/ do
  @thering = FactoryGirl.create(:movie)
  @thenotebook = FactoryGirl.create(:movie, :name => "The Note book", :genre => "Romance", :duration => "30", :rating => 4, :language => "English")
end

Given /^I am on the 'movies' page$/ do
 visit movies_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |tagname, value|
  page.should have_css(tagname, :text => value)
end

Then /^in the "(.*?)", I should see a link to "(.*?)"$/ do |tagname, value|
  within tagname do
    page.should have_link value
  end
end

Given /^I am on the 'new movie' page$/ do
  visit new_movie_path
end

When /^I enter "(.*?)" for "(.*?)"$/ do |value, field|
  fill_in field, :with => value
end

When /^I select "(.*?)" for "(.*?)"$/ do |value, selectboxname|
  select value, :form => selectboxname
end


When /^I click "(.*?)"$/ do |output|
  click_button output
end


Then /^I should see "(.*?)"$/ do |output|
  page.should have_content output
end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  within_table('List') do
      within('tr', :text => cell_value) do
        find('a', :text => link).click 
      end
    end
end

When /^I change the name "(.*?)" to "(.*?)"$/ do |old, new|
  fill_in "Name", :with => new
end

Then /^I should not to see "(.*?)"$/ do |value|
  page.should_not have_content(value)
end