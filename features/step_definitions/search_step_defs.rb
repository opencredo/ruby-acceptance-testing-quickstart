Given(/^the user "([^\"]*)" exists$/) do |user_alias|
  user = User.new
  @test_world.add_user(user_alias, user)
end

When(/^I open the homepage$/) do
  @home.load
end

When(/^I search for "([^\"]*)"/) do |text|
  @home.search text
end

When(/^I search for user "([^"]*)"$/) do |user_alias|
  user = @test_world.get_user user_alias
  @home.search user.name
end

Then(/^I should be on the search results for "([^\"]*)"$/) do |search_text|
  expect(@results.current_url).to include search_text
end

Then(/^I should be on the search results for user "([^"]*)"$/) do |user_alias|
  name = @test_world.get_user(user_alias).name
  expect(@results.current_url).to include name.tr(' ', '+')
end

Then(/^I should see search results for "([^\"]*)"$/) do |text|
  expect(@results).to have_search_results minimum: 10
  expect(@results.search_results[0]).to have_text text
end

Then(/^I should see search results for query "([^"]*)"$/) do |user_alias|
  name = @test_world.get_user(user_alias).name
  expect(@results).to have_search_results minimum: 10
  expect(@results.search_results[0]).to have_text name
end

Then(/^I should see a link to "([^"]*)"$/) do |url|
  expect(@results.search_result_links).to include(url)
end
