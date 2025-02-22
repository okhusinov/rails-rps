class ZebraController < ApplicationController

  @random_move = ["rock", "paper", "scissors"].sample
  @outcome = "They played #{@random_move}!"

  def giraffe
    
    if @random_move == "rock"
      @result = "tied"
    elsif @random_move == "paper"
      @result = "lost"
    else
      @result = "won"
    end
  
    @winner = "We #{result}!"

    render ({ :template => "game_templates/play_rock" })
  
  end

  def elephant

    if @random_move == "paper"
      @result = "tied"
    elsif @random_move == "scissors"
      @result = "lost"
    else
      @result = "won"
    end
  
    @winner = "We #{result}!"

    render ({ :template => "game_templates/play_paper" })
  
  end

  def lion

    if @random_move == "scissors"
      @result = "tied"
    elsif @random_move == "rock"
      @result = "lost"
    else
      @result = "won"
    end
  
    @winner = "We #{result}!"

    render ({ :template => "game_templates/play_scissors" })
  
  end

  def rules
    render ({ :template => "game_templates/rules" })
  end

end
