class RPS

attr_reader :player1_choice, :player2_choice

def initialize(player1_choice, player2_choice)
  @player1_choice = player1_choice.to_i
  @player2_choice = player2_choice.to_i
end

def who_won
  return 0 if @player1_choice == @player2_choice
  return 1 if (@player1_choice - @player2_choice == 1) || (@player2_choice - @player1_choice == 2)
  return 2
end

def winner_message(result)
  numbered_array = ['Draw', 'Player 1 Wins', 'Player 2 Wins', "Something went wrong..." ]
  return numbered_array[result]
end

def show_player_choice(choice_number)
  choices = ['Rock', 'Paper', 'Scissors']
  return choices[choice_number]
end

end # end class
