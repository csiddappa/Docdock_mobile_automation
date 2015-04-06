require 'calabash-android/calabash_steps'


When(/^I click on Appointment Request$/) do
  main.click_appointment_request_button
end

Then(/^It should display appointment request page$/) do
  main.display_appointment_request_page
end

When(/^I click on Date field$/) do
	main.click_date_field
end

When(/^I set Date in the calender$/) do
  main.set_date_in_the_calendar
end

When(/^I click on Done button$/) do
  main.click_done_button
end

When(/^I select the PM button$/) do
  main.tap_PM_button
end

When(/^I enter the message$/) do
  main.enter_appointment_request_message
end

When(/^I click on appointment request Send button$/) do
main.click_appointment_request_Send_button
end

Then(/^It should display appointment request sent message$/) do
  main.display_appointment_request_sent_message
end