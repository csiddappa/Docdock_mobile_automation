@bfirst
Feature: login with valid credentials

  Scenario: login with valid and invalid scenarios
  When I enter the email address and password
  When I click on Login button should be able to login successfully
  Then dashboard page should be displayed
  When I click on settings button
  Then I should be taken into settings page
  When I click on Logout button
  When I click on Ok button
  #Then i should be taken back to homepage

  Scenario: invalid login
  When I enter the invalid email and valid password
  Then I should see invalid email error messages
  When I click on invalid Ok button
  Then I should see home or login page again
  When I enter the valid email and invalid password
  Then I should see the invalid password error message
  When I click on Invalid password Ok button
  #Then I should see the homepage or initial page


 