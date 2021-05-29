
# use get.chomp for output
# isolate I/O logic to one or two classes
# use puts, raise some_val.inspect, and byebug for debugging


require "./Question"

class Game
  attr_accessor :p1, :p2
  
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = 1
  end

  def start
    #logic goes here

    puts '----- NEW GAME -----'
    puts "#{p1.name} is playing against #{p2.name}"

    while !p1.lost_the_game && !p2.lost_the_game
      puts '----- NEW TURN -----'

      if @current_player > 2
        @current_player = 1
      end

      question = Question.new
      puts question.question
      answer = gets.chomp.to_i
        if answer == question.answer
          puts 'That is correct!'
        else
          puts 'Seriously? No!'

          if @current_player == 1
            p1.lose_life
          else
            p2.lose_life
          end

        end
      puts "The score is: #{p1.name} - #{p1.lives}/3 and #{p2.name} - #{p2.lives}/3"

      if p1.lost_the_game
        p2.win_the_game
      end
  
      if p2.lost_the_game
        p1.win_the_game
      end

      current_player++
    end

  end  
end