require 'calabash-android/calabash_steps'

Given(/^I am in dashboard page$/) do
  main.verify_dashboard_screen
end

When(/^I tap on Call image$/) do
  main.click_call_image
end

Then(/^it should display the popup$/) do
  main.verify_call_popup
end

When(/^I selects the user from the list$/) do
  main.select_user_from_list
end

Then(/^it should display the phone number$/) do
  main.display_phone_number
end

When(/^user clicks on OK button$/) do
 main.click_phone_number_okbutton
end

#Then(/^It should call the user$/) do
#main.call_the_user
#end
