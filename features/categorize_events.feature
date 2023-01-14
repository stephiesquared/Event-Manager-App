Feature: Categorize an event or activity
    As an event organizer
    I want to be able to tag my event or activity with different categories
    so people will be able to get an idea of the event at a glance

    Background: At new event page
        Given I am in the new event form
    
    Scenario: Label event with a title
        When I fill out the title
        Then I should see the event labeled with the title

    Scenario: Label event with a category
        When I fill out the category
        Then I should see the event labeled with the category
    
    Scenario: Label event with a description
        When I fill out the description
        Then I should see the event labeled with the description
    
    Scenario: Label event with a location
        When I fill out the location
        Then I should see the event labeled with the location
    
    Scenario: Label event with a date
        When I fill out the date
        Then I should see the event labeled with the date
    