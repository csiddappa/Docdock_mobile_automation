require 'calabash-android/calabash_steps'

When(/^I click on Practice GPS Locator$/) do
  main.click_gps_locator
end

Then(/^I should see the map page$/) do
  main.display_map_page
end

Then(/^I should click on launch map to see the map page$/) do
  main.click_launch_map
end