require 'calabash-android/calabash_steps'

When(/^I click on Email$/) do
 main.click_email
end

Then(/^I should see personal Email page$/) do
  main.display_personal_emailpage
end

When(/^I enter the subject and message$/) do
  main.enter_subject_and_message
end

When(/^I click on email Send button$/) do
 main.click_email_send_button
end

Then(/^it should display a email sent message$/) do
  main.display_email_sent_message
end