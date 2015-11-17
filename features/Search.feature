Feature: Duckduckgo searching

Scenario: Search for some cukes
  When I open the homepage
  And I search for "cukes"
  Then I should be on the search results for "cukes"
  And I should see search results for "cukes"

  Scenario: Search for a randomised and saved query
    Given I have a name "Person A"
    When I open the homepage
    And I search for random query "Person A"
    Then I should be on the search results for query "Person A"
