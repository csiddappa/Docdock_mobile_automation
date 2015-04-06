require 'calabash-android/calabash_steps'

Given(/^I am in home page$/) do
  home.verify_home
end

When(/^I click on Forgot Password link$/) do
  home.click_forgot_password
end

Then(/^I should be able to see the Forgot password popup$/) do
  home.verify_forgot_password
end

When(/^I enter the valid email address$/) do
  home.enter_email_address
end

When(/^I click on Send button$/) do
  home.click_send
end

Then(/^I should be able to see the flash message$/) do
  home.verify_flash_message
end

