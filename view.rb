class View
  def initialize
    puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."
  end

  def welcome
    puts "Listo?  Arranca el juego!"
  end

  def print_question(question)
    puts "#{question}"
  end

  def print_answer(op_answer, value)
    puts "#{value}: #{op_answer}"
  end

  def bye(count_right, count_wrong)
    puts "Acabaste:" 
    puts "Tuviste #{count_right} Correctas y #{count_wrong} Incorrectas."

  end
end#class View