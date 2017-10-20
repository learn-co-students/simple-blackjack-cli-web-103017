def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp.to_s
  answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a = deal_card()
  b = deal_card()
  sum = a + b
  display_card_total(sum)
  sum
end


def invalid_command
  puts "Please enter a valid command"
end

def hit?(x)
  prompt_user
  big_answer = get_user_input
  if big_answer == "s"
    x
  elsif big_answer == "h"
    x + deal_card
  else
    invalid_command
    prompt_user
    x
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  t = hit?(x)
  display_card_total(t)
  until t > 21
    hit(t)
  end
  end_game(t)
end
