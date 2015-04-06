
@staff
Feature: Physician and Staff Bios

Scenario: Staff list
#Given I am in dashboard page
When I enter the email address and password
When I click on Login button should be able to login successfully
Then dashboard page should be displayed
When I click on physician and staff bios
Then I should see the list of staff page
When I click on any staff 
Then it should display the description page
#When I click on Email button
#Then It should display Inquiry page
#When I enter email message
#When I click on Send button
#Then I should see sending message text











  