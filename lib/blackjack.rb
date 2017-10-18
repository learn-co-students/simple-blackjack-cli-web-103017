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
    input = gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    card_total = deal_card + deal_card
    display_card_total(card_total)

end

def hit?(card_total)
    prompt_user
    if get_user_input == 'h'
        card_total += deal_card
    end
    card_total
end

def invalid_command
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_total = initial_round #deals first two cards and adds them together

    while card_total < 21 #if the card_total above is less than 21 then enters this block
        card_total = hit?(card_total) #new card total becomes the previous total + hit
        card_total = display_card_total(card_total) #displays new card_total if still under 21 as again if the user wants a hit
    end
        end_game(card_total) #if above 21 then tells the user that they are above 21 and ends the game

end
