require 'calabash-android/calabash_steps'


When(/^I click on Sign Up tab$/) do
  home.click_Sign_Up
end

Then(/^Sign Up page should be displayed$/) do
  home.verify_Sign_Up
end

When(/^I enter the valid details$/) do
  home.enter_valid_data
end

Then(/^I should see a valid message/) do
  home.Sign_Up_valid_message
end

#When(/^I click on Sign Up tab for invalid scenario$/) do
  #home.click_Sign_Up_invalid
#end

Then(/^Sign Up page with blank fields should be displayed$/) do
	home.click_Sign_Up_blank_fields
end

When(/^I leave all the fields blank$/) do
  home.Sign_Up_blank_fields
end

Then(/^I should see a blank error message$/) do
	home.Sign_Up_blank_message
end

#When(/^I enter all the valid details but invalid email$/) do
 # home.enter_invalid_email
#end
 
 #Then(/^I should see a valid email message$/) do
 #home.enter_valid_email_message
#end

