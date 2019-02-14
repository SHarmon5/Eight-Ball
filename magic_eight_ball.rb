#welcome and ask for a question
 # contingency for easter egg questons
  # Quit - ends program
  # "change answers" opens menu to add/remove/reset/print answers to hash
    # can't add duplicate answers
require "pry"

    @answers = ["Sure, why not", "yes", "no", "Are you kidding right now?",
  "You should see someone about that", "your mom does", "Yeah, that'll do"]
    
 

  def welcome
    puts "***Welcome to the Magic Eight Ball***"
    puts "Please enter your question for the Eight Ball..."
    string = gets.to_s.strip
    # sleep(2)
    # puts "Thinking......"
    # sleep(2)
    # puts "This is  a tough one!"
    # sleep(1)
    # puts "I'll get it......."
    # sleep(1)
    # puts "one more sec..... please"
    # sleep(1)
    # puts "Be patient!!"
    # sleep(1)
    puts @answers.sample
  end



  welcome











# computer spits out answer
