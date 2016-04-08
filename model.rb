require 'csv'

class Deck

  def initialize(deck_name = "Cultura_general.csv")
    @deck_name = deck_name
    @questions = []
    @index_q = 0
    @index_a = 1
  end#initialize

  def read
    @questions = CSV.read(@deck_name)
  end#mtd read

  def question
    read
    question = []
      question << @questions[@index_q]
      @index_q += 3
    question.join
  end#mtd question


  def right_answer?(op_answer)
    answer = []
    answer << @questions[@index_a]
    @index_a = @index_q + 1
    if answer.join.downcase == op_answer
      return true
    else
      return false
    end
  end#mtd right_answer?



end#class Deck
