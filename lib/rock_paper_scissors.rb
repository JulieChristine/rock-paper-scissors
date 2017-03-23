require('pry')

class String
  define_method(:beats) do |argument|
    player1 = self
    player2 = argument
    result = {}
    if player1 == "rock"
      if player2 == "rock"
        result[:item1]="Tie! Play again!"
        result[:item2]= false
      elsif player2 == "paper"
        result[:item1]="Paper wins, well done player1"
        result[:item2]=false
      elsif player2 == "scissors"
        result[:item1]="Rock wins, well done player2"
        result[:item2]= true
      end
    elsif player1 == "paper"
      if player2 == "rock"
        result[:item1]="Paper wins, well done player1"
        result[:item2]= true
      elsif player2 == "paper"
        result[:item1]= "Tie! Play again!"
        result[:item2]= false
      elsif player2 == "scissors"
        result[:item1]= "Scissors wins, well done player2"
        result[:item2]= false
      end
    elsif player1 == "scissors"
      if player2 == "rock"
        result[:item1]= "Rock wins, well done player2"
        result[:item2]= false
      elsif player2 == "paper"
        result[:item1]= "Scissors wins, well done player1"
        result[:item2]= true
      elsif player2 == "scissors"
        result[:item1]= "Tie! Play again!"
        result[:item2]= false
      end
    end
    result
  end
end
