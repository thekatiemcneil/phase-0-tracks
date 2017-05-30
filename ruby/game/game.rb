class WordGame
  attr_reader :number_of_guesses, :guessed_words_array, :is_over, :guessed_letters, :word_to_guess, :current_guess, :correct_guess

  def initialize
    @word = nil
    @number_of_guesses = 0
    @guessed_words_array = []
    @is_over = false
    @guessed_letters = nil
    @correct_guess = false
  end

  def record_word(word)
    @word_to_guess = word
  end

  def set_guess_count
    @number_of_guesses = @word_to_guess.length
  end

  def record_guess(guess)
    @current_guess = guess
  end

  def check_guess
    if @current_guess == @word_to_guess
      is_over = true
      correct_guess = true
    else
      is_over = false
      correct_guess = false
    end
  end

  def already_guessed?
    if @guessed_words_array.include?(@current_guess)
      @number_of_guesses += 1
    else
      @guessed_words_array.push(@current_guess)
    end
  end

  def update_guess_count
    number_of_guesses -= 1
  end

end

