class Game
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  # win_states = {
  #   "scissors" => "paper"
  # }

  def result
    if @hand1 ==  @hand2
      return "You's both LOST! #{@hand1} DRAWS with #{@hand2}"
    elsif @hand1 == "rock" && @hand2 == "paper"
      return "#{@hand2} wraps #{@hand1}, player 2 wins"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "#{@hand1} wins"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "#{@hand1} wraps #{@hand2}, player 1 wins"
    elsif @hand1 == "paper" && @hand2 == "scissors"
      return "#{@hand2} wins"
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "#{@hand1} wins"
    elsif @hand1 == "scissors" && @hand2 == "rock"
      return "#{@hand2} wins"
    elsif @hand1 == "hand1" && @hand2 == "hand2"
      return "OK. Keep it fair. One hand behind your back. Please input your hands above..."  
    else "Read the rules guys, it's 3 moves. rock, paper, scissors"
    end # if end
end # def result end
end # Class end
