def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total)

  puts "Sorry, you hit #{total}. Thanks for playing!"

end

def initial_round

  card_total = 0
  2.times do
    card_total += deal_card
  end
  display_card_total(card_total)
  return card_total

end

def hit?(total)

  prompt_user

  input = get_user_input
  until input == 's' || input == 'h'
    invalid_command
    input
  end

  if input == 's' #stay

    return total

  else #if input = 'hit'

    total = deal_card + total
    display_card_total(total)
    return total
  end
end

def invalid_command
  puts "Invalid command."
end

def runner

  welcome

  current_hand = initial_round
  current_hand = hit?(current_hand)


  until current_hand >= 21
      current_hand = hit?(current_hand)
  end
  end_game(current_hand)
end
