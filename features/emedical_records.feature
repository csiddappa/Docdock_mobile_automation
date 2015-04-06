@medicalrecords
Feature: user should be able to view Medical Records

Scenario: user should be able to view records
#Given I am in dashboard page
When I enter the email address and password
When I click on Login button should be able to login successfully
Then dashboard page should be displayed
When I tap on Med Records
#Then It should display the Medical records page
When I select the particular record
#Then It should display the full view of the record

