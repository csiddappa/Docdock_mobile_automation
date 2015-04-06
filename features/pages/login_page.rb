require 'calabash-android/abase'

 class HomePage < Calabash::ABase

  def initialize(calabash)
    @calabash = calabash
  end

def enter_user_data 
    sleep 5
    @calabash.clear_text_in("* id:'loginemail'")
    sleep 5
    keyboard_enter_text("user1234@yopmail.com")
    sleep 2
    @calabash.clear_text_in("* id:'loginpassword'")
    sleep 2
    keyboard_enter_text("passwordM@1")
    
end

def click_Login
  @calabash.touch("* id:'loginbutton'")
sleep 5
end

def verify_dashboard
  sleep 5
  if @calabash.element_exists("* id:'content'")
    puts "dashboard is present"
    else
     @calabash.screenshot_and_raise "dashboard is not present"
  end
  end

  def click_settings_button
    @calabash.touch("* id:'action_settings'")
  sleep 2
end

def verify_settingspage
  sleep 5
  if @calabash.element_exists("* id:'logoutbutton'")
    puts "settings page is present"
    else
     @calabash.screenshot_and_raise "settingspage is not found"
  end
  end

  def click_logoutbutton
    @calabash.touch("* id:'logoutbutton'")
    sleep 2
  end

  def click_okbutton
    @calabash.touch("* id:'button1'")
sleep 4
end

def verify_homepageagain
  if @calabash.element_exists("* id:'logincontainer'")
    puts "home page is found"
    else
     @calabash.screenshot_and_raise "home page is not found"
  end
  end

 def enter_invalid_email
  sleep 5
    @calabash.clear_text_in("* id:'loginemail'")
    sleep 5
    keyboard_enter_text("user1234a")
    sleep 2
    @calabash.clear_text_in("* id:'loginpassword'")
    sleep 2
    keyboard_enter_text("passwordM@1")
    sleep 2
    @calabash.touch("* id:'loginbutton'")
    sleep 5
end

def verify_invalid_email_message
  sleep 2
  if @calabash.element_exists("* id:'buttonPanel'")
    puts "Enter valid email message should be displayed"
    else
     @calabash.screenshot_and_raise "error message is not found"
     sleep 2
   end
 end

    def click_invalid_ok
      @calabash.touch("* id:'button2'")
     sleep 2
  end

def verify_home_or_loginpage
  if @calabash.element_exists("* id:'action_bar_title'")
  puts "found loginpage"
else 
  @calabash.screenshot_and_raise "loginpage not found"
  sleep 2
end
end


def enter_invalid_password
  sleep 5
    @calabash.clear_text_in("* id:'loginemail'")
    sleep 5
    keyboard_enter_text("user1234@yopmail.com")
    sleep 2
    @calabash.clear_text_in("* id:'loginpassword'")
    sleep 2
    keyboard_enter_text("passwordM@")
    sleep 2
    @calabash.touch("* id:'loginbutton'")
    sleep 5
end

def verify_invalid_password_message
  if @calabash.element_exists("* id:'custom'")
  puts "invalid password error message"
else
  @calabash.screenshot_and_raise "invalid password message not found"
  sleep 5
end
end

def click_invalid_password_okbutton
  @calabash.touch("* {text CONTAINS 'OK'}")
end

def verify_homepage_or_initialpage
 if @calabash.element_exists("* id:'action_bar'")
  puts "redirected to initial page"
else
  @calabash.screenshot_and_raise "unable to redirect to initialpage"
end
end

end

