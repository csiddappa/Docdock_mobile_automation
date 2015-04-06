require 'calabash-android/calabash_steps'

When(/^I enter the email address and password$/) do
  home.enter_user_data
end

When(/^I click on Login button should be able to login successfully$/) do
 home.click_Login
end

Then(/^dashboard page should be displayed$/) do
  home.verify_dashboard
end

When(/^I click on settings button$/) do
  home.click_settings_button
end

Then(/^I should be taken into settings page$/) do
  home.verify_settingspage
end

When(/^I click on Logout button$/) do
  home.click_logoutbutton
end

When(/^I click on Ok button$/) do
  home.click_okbutton
end

Then(/^i should be taken back to homepage$/) do
  home.verify_homepageagain
end

When(/^I enter the invalid email and valid password$/) do
  home.enter_invalid_email
end


Then(/^I should see invalid email error messages$/) do
  home.verify_invalid_email_message
end

When(/^I click on invalid Ok button$/) do
  home.click_invalid_ok
end

Then(/^I should see home or login page again$/) do
  home.verify_home_or_loginpage
end

When(/^I enter the valid email and invalid password$/) do
  home.enter_invalid_password
end

Then(/^I should see the invalid password error message$/) do
  home.verify_invalid_password_message
end

  When(/^I click on Invalid password Ok button$/) do
  home.click_invalid_password_okbutton
end

  Then(/^I should see the homepage or initial page$/) do
    home.verify_homepage_or_initialpage
  end


