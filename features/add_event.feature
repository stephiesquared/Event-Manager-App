Feature: New Event
    As an event organizer
    I want to be able to add an event to the database
    so that people will know when and where my event takes place
    
    Background: At new event page
        Given I traveled from the homepage to the new event form

    Scenario: Add event to list
        When I fill out the form correctly
        Then the event is successfully created

    Scenario: Make sure event must have title
        When I forget the title
        Then I should see "Title can't be blank"

    Scenario: Make sure event must have category
        When I forget the category
        Then I should see "Category can't be blank"
    
    Scenario: Make sure event must have description
        When I forget the description
        Then I should see "Description can't be blank"

    Scenario: Make sure event must have location
        When I forget the location
        Then I should see "Location can't be blank"

    Scenario: Make sure event must have latitude
        When I forget the latitude
        Then I should see "Latitude can't be blank"

    Scenario: Make sure event must have longitude
        When I forget the longitude
        Then I should see "Longitude can't be blank"

    Scenario: Make sure event must have date
        When I forget the date
        Then I should see "Date can't be blank"