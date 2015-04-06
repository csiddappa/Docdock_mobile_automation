@call
Feature: call feature
As a user, I should be able to select the contacts from the list 
so that I can Call the related person

Scenario: user should be able to call
When I enter the email address and password
When I click on Login button should be able to login successfully
Then dashboard page should be displayed
When I tap on Call image
Then it should display the popup
When I selects the user from the list
Then it should display the phone number
When user clicks on OK button


