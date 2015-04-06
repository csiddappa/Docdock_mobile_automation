require 'calabash-android/calabash_steps'


When(/^I click on Health Tips and Alerts$/) do
  main.click_healthtip_and_alerts
end

Then(/^I should be able to see the list of alerts$/) do
  main.display_list_of_alerts
end