
@email
Feature: Email request

Scenario: User should be able to send Email
#Given I am in dashboard page
When I enter the email address and password
When I click on Login button should be able to login successfully
Then dashboard page should be displayed
When I click on Email
Then I should see personal Email page
When I enter the subject and message
When I click on email Send button
Then it should display a email sent message

