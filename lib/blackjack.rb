
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  number = deal_card + deal_card
  display_card_total(number)
  return number
end
# def initial_round
#   # code #initial_round here
#   sum = rand(1..11) + rand(1..11)
#   display_card_total(sum)
# end
def hit?(number)
  prompt_user
  input = get_user_input
  if input == 'h'
    number += deal_card
  elsif input == 's'
    number
  else
    invalid_command
  end
end
def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end
#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
 welcome
 card_total = initial_round
 while  card_total != nil && card_total < 21
   card_total = hit?(card_total)
   card_total = display_card_total(card_total)
 end
 end_game(card_total)
end
