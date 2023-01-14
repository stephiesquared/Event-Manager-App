Feature: View Chosen Event
    As a user
    I want to click an event from the event list
    so that I can get more information about it

Scenario: Add event to list
    Given there is no extra event information displaying
    When I click on an event from the event list
    Then the chosen event's extra information should display
