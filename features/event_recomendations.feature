#Cucumber tests for future event recomendations feature
Feature:Activity recommendations
	As a user
	I want activities and events similar to those on my schedule to be recommended to me
	so that I can experience activities I may have missed when making my schedule

	Background: At home page
		Given I am currently on the main page with multiple events  

	Scenario: View event recomendations
		When There are events populated in the event window
		Then I should see event recomendations

