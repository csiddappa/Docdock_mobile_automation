require 'calabash-android/abase'

 class MainPage < Calabash::ABase

  def initialize(calabash)
    @calabash = calabash
  end

def verify_dashboard_screen
  sleep 3
   @calabash.element_exists("* id:'home'")
    puts "dashboard screen is present"
    end

def click_call_image
  @calabash.touch("android.widget.ImageView index:1")
    sleep 5
  end

  def verify_call_popup
sleep 3
   @calabash.element_exists("* id:'customPanel'")
    puts "call list is found"
  end
    
def select_user_from_list
  @calabash.touch("* id:'textViewItem'")
    sleep 5
  end

def display_phone_number
   @calabash.element_exists("* id:'message'")
         puts "You're making call to Phone No: 303-589-8300"
       end

def click_phone_number_okbutton
  @calabash.touch("* id:'button1'")
    sleep 5
  end

  def display_dashboard_page
    wait_for(timeout: 60) {query("* id:'home'")}
    puts "dashboard page is present"
    end


def click_medical_records
  @calabash.tap_when_element_exists("android.widget.ImageView index:2")
  sleep 3
end

def display_records_page
  @calabash.element_exists("* id:'reportname")
  puts "Medical records page"
end

def select_record
@calabash.touch("android.widget.TextView index:2")
wait_for(timeout: 60) {query("webview")}
wait_for(:timeout => 10, :retry_frequency => 0.2) { query("android.webkit.WebView index:1").empty? }
#wait_for( timeout: 60 ) { query("android.webkit.WebView index:1")}
end
 
 #def view_full_report
  #wait_for(timeout: 10) {query("* id:'webview'")}
#end


def click_email
  @calabash.tap_when_element_exists("android.widget.ImageView index:3")
  sleep 5
end

def display_personal_emailpage
  @calabash.element_exists("* {text CONTAINS 'Personal Email'}")
  puts "Personal Email page found"
  sleep 5
end

def enter_subject_and_message
  @calabash.enter_text("* id:'emailus_subject'","test email")
   @calabash.enter_text("* id:'emailus_body'","Docdock email request")
   sleep 5
   end

def click_email_send_button
  @calabash.touch("* contentDescription:'send'")
  sleep 3
end

def display_email_sent_message
  #wait_for(timeout: 60) {query("webview")}
 wait_for(timeout: 60) {query("* id:'message'")}
puts "Email sent successfully"
sleep 5
end

def click_appointment_request_button
  @calabash.tap_when_element_exists("android.widget.ImageView index:4")
  sleep 5
end

def display_appointment_request_page
  wait_for(timeout: 60) {query("* {text CONTAINS 'Request an Appointment'}")}
puts "Request an Appointment page is found"
sleep 5
end

def click_date_field
  @calabash.touch("* id:'emailus_date'")
  sleep 5
end

def set_date_in_the_calendar
  wait_for(timeout: 60) {query("datePicker",{:method_name => :updateDate, :arguments => [2015,12,31]})}
  puts "date is selected"
  sleep 5
end

def click_done_button
  @calabash.touch("* id:'button1'")
  sleep 5
end

def tap_PM_button
  @calabash.touch("* id:'togglebutton'")
  sleep 5
end

def enter_appointment_request_message
  @calabash.enter_text("* id:'emailus_body'","Docdock appointment request")
  sleep 5
end

def click_appointment_request_Send_button
  @calabash.touch("* contentDescription:'send'")
  sleep 5
end

def display_appointment_request_sent_message
  wait_for(timeout: 60) {query("* id:'message'")}
puts "Appointment request sent successfully"
sleep 5
end

def click_healthtip_and_alerts
  @calabash.tap_when_element_exists("android.widget.ImageView index:5")
  sleep 5
end

def display_list_of_alerts
  wait_for(timeout: 60) {query("* id:'healthtips'")}
puts "Health tips and alerts page found"
sleep 5
end

def click_physician_and_staff_page
  @calabash.tap_when_element_exists("android.widget.ImageView index:6")
  sleep 5
end

def display_list_of_staff_page
  wait_for(timeout: 60) {query("* id:'staff_name'")}
puts "staff list page is found"
sleep 5
end

def select_staff_from_list
  @calabash.touch("* {text CONTAINS 'Dr. Marc Sarti'}")
  sleep 5
end

def display_staff_description_page
  wait_for(timeout: 60) {query("* id:'staff_pic'")}
puts "staff description page found"
sleep 5
end

def click_staff_email_button
  @calabash.touch("* id:'staff_email'")
  puts "staff email page found"
sleep 5
end

def click_recommended_apps
   @calabash.tap_when_element_exists("android.widget.ImageView index:7")
  sleep 5
end

def display_list_of_apps
  wait_for(timeout: 60) {query("* id:'recappsname'")}
puts "recommended apps list page is found"
sleep 5
end

def select_any_available_app
 # wait_for(timeout: 60) {@calabash.touch("* {text CONTAINS 'medical'}")}
 @calabash.touch("* {text CONTAINS 'medical'}")
puts "app is found in play store"
sleep 5
end

def click_gps_locator
  @calabash.tap_when_element_exists("android.widget.ImageView index:8")
  sleep 5
end

def display_map_page
  wait_for(timeout: 60) {query("* id:'gps_practice_name'")}
sleep 5
end

def click_launch_map
   @calabash.touch("* {text CONTAINS 'Launch Map'}")
sleep 5
end




end

 




