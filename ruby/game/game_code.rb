class WordGame
attr_accessor :is_over, :guesses_remaining, :word, :user_guess, :guess_array, :guessed_words, :correct_guess

  def initialize
    @is_over = false
    @guessed_words = []
    @guesses_remaining = 0
    @correct_guess = false
  end

  def word_to_guess(word)
    @word = word.split("")
    @guesses_remaining = @word.count
    @guess_array = "-" * @word.count
  end

  def user_input(user_guess)
    @guessed_words.push(user_guess)
    if @guessed_words.include?(user_guess)
      @guesses_remaining += 1
    end
    @user_guess = user_guess.split("")
  end

  def test_guess
    if
      @user_guess == @word
      @is_over = true
      @correct_guess = true
    else
      is_over = false
    end
  end

  def test_guess_count
  @guesses_remaining -= 1
    if
      @guesses_remaining == 0
      is_over = true
    else
      is_over = false
    end
  end

  def rewrite_array
    @word.each_with_index do |i, index|
      if i == @user_guess[index]
        @guess_array[index] = i
      end
    end
    @guess_array
  end

end

# ask user 1 for a word.
# take in their input as the argument for 'word to guess' method.
# ask user 2 for a guess
  #