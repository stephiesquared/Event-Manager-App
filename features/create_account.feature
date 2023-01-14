Feature: Create an account
    As an event organizer
    I want to be able to create an account
    so that only I may edit and delete the events I have created

    Background: At home page
        Given I am currently on the main page of the app
    
    Scenario: Create an account
        When I select signup and fill in the required information
        Then I will have an account on the site and be logged in