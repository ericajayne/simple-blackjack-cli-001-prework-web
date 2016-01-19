def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (initial_round)
 prompt_user
 output = get_user_input
 if output == "h"
  deal_card + initial_round
  else output == "s"
  initial_round
end
end


def invalid_command
   puts "error, please valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total >21 do
   total = hit?(total)
   display_card_total(total)
  end
  end_game(total)
end
    
