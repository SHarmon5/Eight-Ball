#welcome and ask for a question
 # contingency for easter egg questons
  # Quit - ends program
  # "change answers" opens menu to add/remove/reset/print answers to hash
    # can't add duplicate answers
require "colorize"


    @answers = ["Sure, why not", "yes", "no", "Are you kidding right now?",
  "You should see someone about that", "your mom does", "Yeah, that'll do"]
    @cloned_answers = @answers.clone
    
 

  def welcome
    puts "***Welcome to the Magic Eight Ball***".colorize(:white)
    puts "Please enter your question for the Eight Ball...".colorize(:yellow)  
  end
  def user_answer
    welcome
    string = gets.to_s.strip
    case string

      when "change answers"
        egg_answer

      when "quit"
        puts "Sorry to see you leave"
        exit
      else
        puts "Thinking......".colorize(:yellow)
        sleep(2)
        puts "This is  a tough one!".colorize(:light_red)
        sleep(2)
        puts "I'll get it.......".colorize(:light_red)
        sleep(2)
        puts "one more sec..... please".colorize(:red)
        sleep(2)
        puts "Be patient!!".colorize(:red)
        sleep(2)
        puts @answers.sample
        puts "Do you have another question y/n?"
        reply = gets.to_s.strip
        reply == "y" ? user_answer : leave

    end
  end

  def leave
    puts "OK, come back soon!"
    exit
  end



  def egg_menu
    puts "What would you like to do with the answers?".colorize(:green)
    puts " 1) Add answers".colorize(:green)
    puts " 2) Reset the answers".colorize(:green)
    puts " 3) Print answers".colorize(:green)
    puts " 4) Return to Eight Ball".colorize(:green)
  end


  def egg_answer
    egg_menu
    input = gets.to_i
    case input
    when 1
      add_answer
    when 2 
      puts "Are yous sure. My answers are better now? y/n"
      decision = gets.to_s.strip
      decision == "y" ? yes_answer : no_answer
    when 3
      print_answers
    when 4
      user_answer
    else
      puts "Invalid choice, you're a quick one!"
      egg_answer
    end
  end

  def yes_answer
    puts "OK, back to the boring answers... you're lame."
    @answers = @cloned_answers
    egg_answer
  end

  def no_answer
    puts "Good call"
  end

  def add_answer
    puts "OK, What answer do you want to add?"
      new_answer = gets.to_s.strip
    @answers << new_answer
    puts "Do you want to add another answer? y/n"
    value = gets.to_s.strip
    value == "y" ? add_answer : egg_answer
  end
  def print_answers
    puts "Here you go...."
    @answers.each_with_index do |name, index|
      puts "#{index + 1}) #{name}"
      end
    egg_answer
  end







  user_answer






# computer spits out answer
