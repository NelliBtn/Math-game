class Player
  
  attr_accessor :lives, :name
  
  def initialize(n)
    @name = n
    @lives = 3
  end
  
  def lose_life
    self.lives -= 1
  end

  def lost_the_game
    self.lives == 0 
  end

  def win_the_game
    puts '----- GAME OVER -----'
    puts "#{self.name} won the game with #{self.lives}/3 score}"
  end

end