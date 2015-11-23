Feature: Parallel feature 09

@parallel-demo
Scenario: Search using a fixed string
  When I open the homepage
  And I search for "OpenCredo"
  Then I should be on the search results for "OpenCredo"
  And I should see search results for "OpenCredo"
