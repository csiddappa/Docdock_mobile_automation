require 'calabash-android/abase'

 class HomePage < Calabash::ABase

  def initialize(calabash)
    @calabash = calabash
  end

  def click_Sign_Up
    sleep 2
@calabash.touch("* id:'signupbutton'")
sleep 2
  end


def verify_Sign_Up
  wait_for(timeout: 10) {query("* id:'confirmpassword'")}
  puts "Signup page is present"
  sleep 2
end
 #if @calabash.element_exists("* id:'confirmpassword'")
    #puts "Signup page is present"
  #else
    #@calabash.screenshot_and_raise "Signup page is not present"
    #sleep 2
  #end
#end

def enter_valid_data
   @calabash.enter_text("* id:'firstname'","user")
   @calabash.enter_text("* id:'lastname'","3570")
   @calabash.enter_text("* id:'signupemail'","user3570@yopmail.com")
   @calabash.enter_text("* id:'signuppassword'","passwordM@1")
   @calabash.enter_text("* id:'confirmpassword'","passwordM@1")
   @calabash.touch("* id:'signupbutton'")
    sleep 3
  end


#def Sign_Up_valid_message
  #wait_for(timeout: 3,
         #timeout_message: "Could not find message") do
  #element_exists("* {text CONTAINS 'Account has been created successfully'}")
#end
#end


def Sign_Up_valid_message
wait_for(timeout: 60) {query("* {text CONTAINS 'Account has been created successfully'}")}
  #if @calabash.element_exists("* {text CONTAINS 'Account has been created successfully'}")
    puts "Account has been created successfully"
    #else
      #@calabash.screenshot_and_raise "Unable to find message"
    #end
  end

  #def click_Sign_Up_invalid
    #wait_for(timeout: 60) {query("* {text CONTAINS 'Account has been created successfully'}")}
    #@calabash.touch("* {text CONTAINS 'Sign Up'}")
    #sleep 2
  #end

  def click_Sign_Up_blank_fields
   sleep 2
    #wait_for( timeout: 60 ) {query("* id:'signuppassword'")}
    if @calabash.element_exists("* id:'signuppassword'")
    puts "Signup page is present"
  else
    @calabash.screenshot_and_raise "Signup page is not present"
  end
end

def Sign_Up_blank_fields
  @calabash.enter_text("* id:'firstname'","")
  @calabash.enter_text("* id:'lastname'","")
   @calabash.enter_text("* id:'signupemail'","")
   @calabash.enter_text("* id:'signuppassword'","")
   @calabash.enter_text("* id:'confirmpassword'","")
   @calabash.touch("* id:'signupbutton'")
    sleep 3
  end

    def Sign_Up_blank_message
      wait_for( timeout: 60 ) {query("* id:'message'")}
      puts "please fill all fields"
    end

      #if @calabash.element_exists("* id:'message'")
      #puts "please fill all fields"
    #else
     #@calabash.screenshot_and_raise "Unable to find message"
   #end
 




#def enter_invalid_email
  #@calabash.enter_text("* id:'firstname'","user")
  #@calabash.enter_text("* id:'lastname'","4545")
  #@calabash.enter_text("* id:'signupemail'","user4545@yopmail.com")
 #@calabash.enter_text("* id:'signuppassword'","passwordM@1")
 # @calabash.enter_text("* id:'confirmpassword'","passwordM@1")
  #@calabash.touch("* id:'signupbutton'")
 #sleep 3
 #end

#def enter_valid_email_message
 # sleep 3 
  #    if @calabash.element_exists("* id:'message'")
   #   puts "please enter valid E-mail"
    #else
     # @calabash.screenshot_and_raise "Unable to find message"
    #end
  #end


end





