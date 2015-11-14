Feature: Google homepage

Scenario: Open Google
  When I open the homepage
  And I search for "cukes"
  Then I should be on the search results page for "cukes"
  And I should see search results for "cukes"å
