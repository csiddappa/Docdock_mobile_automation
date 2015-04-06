
@apps
Feature: Recommended apps

Scenario: List of Recommended apps
#Given I am in dashboard page
When I enter the email address and password
When I click on Login button should be able to login successfully
Then dashboard page should be displayed
When I click on Recommended Apps
Then I should be able to see the list of apps
Then I select the app to check the app in the play store











  