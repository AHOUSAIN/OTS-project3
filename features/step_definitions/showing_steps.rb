Given /^I am on the 'Showings' page$/ do
  visit showings_path
end

Given /^I am on the 'new ' page$/ do
  visit new_showing_path 
end

When /^I change the type "(.*?)" to "(.*?)"$/ do |oldtype, newtype|
  fill_in "Type", :with => newtype
end