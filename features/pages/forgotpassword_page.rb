require 'calabash-android/abase'

 class HomePage < Calabash::ABase

  def initialize(calabash)
    @calabash = calabash
  end

  def verify_home
  sleep 3
  if @calabash.element_exists("* id:'forgotpwd'")
    puts "home is present"
    else
     @calabash.screenshot_and_raise "home is not present"
  end
  end

  def click_forgot_password
    @calabash.touch("* id:'forgotpwd'")
    sleep 5
  end

    def verify_forgot_password
      sleep 5
  if @calabash.element_exists("* {text CONTAINS 'Forgot Password?'}")
    puts "forgot password is present"
    else
     @calabash.screenshot_and_raise "forgot password is not present"
  end
  end

  def enter_email_address
    sleep 5
    @calabash.clear_text_in("android.widget.EditText")
    sleep 5
    keyboard_enter_text("user1234@yopmail.com")
    sleep 2
    
    def click_send
      @calabash.touch("* id:'button1'")
    sleep 3
  end

  #def wait_for_text(text, options={})
  #wait_for_element_exists("* {text CONTAINS 'The reset password instructions has been sent to your Email ID'}", options)
#end

  def verify_flash_message
    sleep 3
  if @calabash.element_exists("* id:'message'")
      puts "The reset password instructions has been sent to your Email ID"
    else
      @calabash.screenshot_and_raise "Unable to find message"
    end
  end
    
  #def wait_for_text(text, options={})
        #wait_for_element_exists("* {text CONTAINS[c] '#{The reset password instructions has been sent to your Email ID}'}", options)
      #nd
  

end
end
