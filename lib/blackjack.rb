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
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
input = get_user_input
  if input == "s"
    return total_cards = number
  elsif input == "h"
    number += deal_card
    return total_cards = number
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_cards = initial_round
  until total_cards > 21 do
    total_cards = hit?(total_cards)
    display_card_total(total_cards)
  end
  end_game(total_cards)
end
