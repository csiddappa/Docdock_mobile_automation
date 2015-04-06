
Feature: Forgot_Password

As a user, 
I should be able to retrieve the password using forgot password link

 Scenario: Retrieving password using forgot password link
 Given I am in home page
 When I click on Forgot Password link
 Then I should be able to see the Forgot password popup
 When I enter the valid email address 
 When I click on Send button
 #Then I should be able to see the flash message


 