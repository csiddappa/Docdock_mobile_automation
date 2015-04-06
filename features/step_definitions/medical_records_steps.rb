require 'calabash-android/calabash_steps'

Given(/^I am in dashboard page$/) do
	main.display_dashboard_page
end

When(/^I tap on Med Records$/) do
  main.click_medical_records
end

Then(/^It should display the Medical records page$/) do
  main.display_records_page
end

When(/^I select the particular record$/) do
  main.select_record
end

Then(/^It should display the full view of the record$/) do
  main.view_full_report
end
