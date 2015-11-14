require_relative '../page-objects/home_page'
require_relative '../page-objects/results_page'

# test_world = TestWorld.instance

When(/^I open the homepage$/) do
  @homepage = Homepage.new
  @homepage.load
end

When(/^I search for "([^\"]*)"/) do |text|
  @homepage.search text
end

Then(/^I should be on the search results page for "([^\"]*)"$/) do |search_text|
  @results_page = ResultsPage.new
  expect(@results_page.current_url).to include(search_text)
end

Then(/^I should see search results for "([^\"]*)"$/) do |text|
  expect(@results_page).to have_search_results minimum: 1
end
