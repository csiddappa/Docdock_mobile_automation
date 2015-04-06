@signup
Feature: Signup feature with valid credentials

  Scenario: Sign up with valid and invalid scenarios
  When I click on Sign Up tab
   Then Sign Up page should be displayed
   When I enter the valid details
   Then I should see a valid message 
   When I click on Sign Up tab
   Then Sign Up page with blank fields should be displayed
   When I leave all the fields blank
   Then I should see a blank error message 

   #Scenario: Sign up with Invalid Email
   #When I enter all the valid details but invalid email
   #Then I should see a valid email message 
