Feature: Search for strings on DuckDuckGo

@demo
Scenario: Search using a fixed string
  When I open the homepage
  And I search for "OpenCredo"
  Then I should be on the search results for "OpenCredo"
  And I should see search results for "OpenCredo"
  And I should see a link to "http://www.opencredo.com/"

@demo
Scenario: Search for a randomised and saved query
  Given the user "Person A" exists
  When I open the homepage
  And I search for user "Person A"
  Then I should be on the search results for user "Person A"
