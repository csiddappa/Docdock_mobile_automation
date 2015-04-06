require 'calabash-android/calabash_steps'


When(/^I click on physician and staff bios$/) do
  main.click_physician_and_staff_page
end

Then(/^I should see the list of staff page$/) do
  main.display_list_of_staff_page
end

When(/^I click on any staff$/) do
  main.select_staff_from_list
end

Then(/^it should display the description page$/) do
  main.display_staff_description_page
end

When(/^I click on Email button$/) do
  main.click_staff_email_button
end

#Then(/^It should display Inquiry page$/) do
 #main.display_inquiry_page
#end

#When(/^I enter email message$/) do
  #main.enter_email_message
#end

#Then(/^I should see sending message text$/) do
  #main.check_email_sent_flash_message
#end