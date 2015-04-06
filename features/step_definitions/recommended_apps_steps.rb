require 'calabash-android/calabash_steps'


When(/^I click on Recommended Apps$/) do
  main.click_recommended_apps
end

Then(/^I should be able to see the list of apps$/) do
  main.display_list_of_apps
end

Then(/^I select the app to check the app in the play store$/) do
 main.select_any_available_app
end