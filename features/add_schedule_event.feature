Feature: New Schedule Event
  As a user
  I want to be able to add events to a schedule
  so that I can keep track of the events I want to participate in

  Scenario: New event added to schedule 
    Given the schedule is empty
    When I click the add event to schedule button
    Then the new event should be added to schedule
