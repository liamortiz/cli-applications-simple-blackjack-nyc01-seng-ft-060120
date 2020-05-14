def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.strip
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  
  prompt_user
  input = get_user_input
  
  while input != 's' or input != 'h' do
    prompt_user
    invalid_command
    input = get_user_input
  end
  
  if input == 'h'
    card_total += deal_card
  end
  
  return card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end



def runner
  # code runner here
end
    
