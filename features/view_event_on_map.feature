Feature: View Events on Map
    As a user
    I want view events near me on a map
    So that I can see events I want to attend in my area
    
    Scenario: User sees a map
        Given I am on the homepage
        Then I should see a map

    Scenario: User sees events on the map
        Given I am on the homepage
        When there are one or more events listed
        Then I should see events pinned on the map

    Scenario: User can view their location on the map
        Given I am on the homepage
        When I have entered my location
        Then I should see my location on the map
