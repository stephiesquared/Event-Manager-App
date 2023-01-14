Feature:Add Calendar Event
	As a user
	I want to view my schedule of events and activities on a calendar
	so that I can get an overview of my events.

	Background: At home page 
		Given I am currently on the main page of the app

	Scenario: User can see calendar
		Then I should see a calendar
		
	Scenario: User can navigate calendar forward
		When I press the next year button
		#Then I should see a calendar for next year

	Scenario: User can navigate calendar backwards
		When I press the previous year button
		#Then I should see a calendar for last year
