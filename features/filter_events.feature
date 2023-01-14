Feature: Filter events
    As a user
    I want to be able to filter events and activities by categories
    so that I only see the types of activities I am interested in

    Background: events have been added to database
        Given the following events exist
            | title                               | category | description                                                                             | location                  | latitude | longitude |   date     |
            | Colorado Springs Record Show        | Indoor   | The Fall is here, and that means it’s time for the Colorado Springs Record Show!        | Embassy Suites            | 10.0     | 10.0      | 2022-11-05 |
            | Open Mic Night                      | Indoor   | Don't miss Open Mic Night at Vultures                                                   | Vultures                  | 11.0     | 11.0      | 2022-11-01 |
            | Family Place Playgroup              | Indoor   | For parents and caregivers with children 1-3 years old.                                 | East Library              | 12.0     | 12.0      | 2022-11-04 |
            | Trans-Siberian Orchestra            | Outdoor  | Trans-Siberian Orchestra - Evening The Ghosts of Christmas Eve                          | The Broadmoor World Arena | 13.0     | 13.0      | 2022-11-05 |
            | 8th Annual Bear Run                 | Outdoor  | Join us for Bear Creek’s 8th Annual Bear Run; a silly charity fun-run/walk for a cause. | Bear Creek Nature Center  | 14.0     | 14.0      | 2022-11-05 |
            | Outdoor School: Animal Tracking 101 | Outdoor  | Families will have the chance to learn from Zoo staff about different tracking methods  | Cheyenne Mountain Zoo     | 15.0     | 15.0      | 2022-11-05 |
        And I am on the main page

    Scenario: Filter based on category
        When I select a category from the drop down
        Then I should only see events with similar category
    
    Scenario: Filter based on location
        When I choose a distance from my location
        Then I should only see events within the chosen distance range
    
    Scenario: Filter based on time
        When I choose a time range
        Then I should only see events within the chosen time range