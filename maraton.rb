require_relative 'model'
require_relative 'view'

class Control

  def initialize
    @deck = Deck.new
    @view = View.new
    @count_right = 0
    @count_wrong = 0
    master
  end#initialize

  def master
    @view.welcome
    control_question
    @view.bye(@count_right, @count_wrong)
  end

  def control_question
      m_question
      x = gets.chomp
      m_answer(x)  
  end

  def m_question
    question = @deck.question
    @view.print_question(question)
  end

  def m_answer(op_answer)
    value = @deck.right_answer?(op_answer)
    if value == true
      @count_right += 1
      value = "Correcto!"
    else
      @count_wrong += 1
      value = "Incorrecto!"
    end
    @view.print_answer(op_answer, value)
  end



end#class Control

#x = ARGV.map(&:dup)
Control.new