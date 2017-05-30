class WordGame
  attr_reader :number_of_guesses, :guessed_words_array, :is_over, :guessed_letters
  attr_accessor :word_to_guess

  def initialize
    @number_of_guesses = 0
    @guessed_words_array = []
    @is_over = false
    @guessed_letters = nil
  end

  def record_word(word)
    @word_to_guess = word
  end

end