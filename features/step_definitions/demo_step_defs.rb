Given(/^I have a name "([^\"]*)"$/) do |person_alias|
  require 'ffaker'
  name = FFaker::Name.name
  @test_world.add_person(person_alias, name)
end

When(/^I open the homepage$/) do
  @home.load
end

When(/^I search for "([^\"]*)"/) do |text|
  @home.search text
end

When(/^I search for random query "([^"]*)"$/) do |person_alias|
  person = @test_world.get_person person_alias
  @home.search person
end

Then(/^I should be on the search results for "([^\"]*)"$/) do |search_text|
  expect(@results.current_url).to include search_text
end

Then(/^I should be on the search results for query "([^"]*)"$/) do |person_alias|
  name = @test_world.get_person person_alias
  expect(@results.current_url).to include name.tr(' ', '+')
end

Then(/^I should see search results for "([^\"]*)"$/) do |text|
  expect(@results).to have_search_results minimum: 1
  expect(@results.search_results[0]).to have_text text
end

Then(/^I should see search results for query "([^"]*)"$/) do |person_alias|
  name = @test_world.get_person person_alias
  expect(@results).to have_search_results minimum: 1
  expect(@results.search_results[0]).to have_text name
end
