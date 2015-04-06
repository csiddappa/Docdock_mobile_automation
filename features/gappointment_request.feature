
@appointment
Feature: Appointment Request

Scenario: User should be able to send the request for appointment
#Given I am in dashboard page
When I enter the email address and password
When I click on Login button should be able to login successfully
Then dashboard page should be displayed
When I click on Appointment Request
Then It should display appointment request page
When I click on Date field
When I set Date in the calender
When I click on Done button
When I select the PM button
When I enter the message
When I click on appointment request Send button
Then It should display appointment request sent message

