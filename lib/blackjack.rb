def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def end_game(total)
  if total > 21
    puts "Sorry, you hit #{total}. Thanks for playing!"
  else
    puts "Your final score was #{total}"
  end
end

def get_user_input
  gets.chomp
end

def hit?(total)
  prompt_user
  case get_user_input
  when 'h'
    total += deal_card
  when 's'
    total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  # code invalid_command here
  puts "Your command was invalid, try again!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    current_total = total
    total = hit?(current_total)
    break if total == current_total
    display_card_total(total)
  end
  end_game(total)
end
    
runner
