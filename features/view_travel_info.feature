Feature: View Travel Information
    As a user
    I want to see travel information such as parking and bus routes
    so that I can plan better and decide whether to attend the event

    Background: Events have already been added to the database
        Given the following events exist
            | title                               | category | description                                                                             | location                  | latitude | longitude |    date     |
            | Colorado Springs Record Show        | Indoor   | The Fall is here, and that means it’s time for the Colorado Springs Record Show!        | Embassy Suites            | 10.0     | 10.0      |  5-Nov-2022 |
            | Open Mic Night                      | Indoor   | Don't miss Open Mic Night at Vultures                                                   | Vultures                  | 11.0     | 11.0      |  1-Nov-2022 |
            | Family Place Playgroup              | Indoor   | For parents and caregivers with children 1-3 years old.                                 | East Library              | 12.0     | 12.0      |  4-Nov-2022 |
            | Trans-Siberian Orchestra            | Outdoor  | Trans-Siberian Orchestra - Evening The Ghosts of Christmas Eve                          | The Broadmoor World Arena | 13.0     | 13.0      | 20-Nov-2022 |
            | 8th Annual Bear Run                 | Outdoor  | Join us for Bear Creek’s 8th Annual Bear Run; a silly charity fun-run/walk for a cause. | Bear Creek Nature Center  | 14.0     | 14.0      |  5-Nov-2022 |
            | Outdoor School: Animal Tracking 101 | Outdoor  | Families will have the chance to learn from Zoo staff about different tracking methods  | Cheyenne Mountain Zoo     | 15.0     | 15.0      |  5-Nov-2022 |
        And I am on the main page

    Scenario: Can see parking locations near event
        When I select an event from the events list
        Then I should see parking locations close to the selected event
    
    Scenario: Can see bus routes near event
        When I select an event from the events list
        Then I should see bus routes that have stops close to the selected event

    Scenario: Can see train/rail routes near event
        When I select an event from the events list
        Then I should see train/rail routes that have stops close to the selected event
