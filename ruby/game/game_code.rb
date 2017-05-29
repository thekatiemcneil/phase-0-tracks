class WordGame
attr_accessor :is_over, :guesses_remaining, :word, :user_guess, :guess_array, :guessed_words

  def initialize
    @is_over = false
    @guessed_words = []
  end

  def word_to_guess(word)
    @word = word.split("")
    @guesses_remaining = @word.count
    @guess_array = "-" * @word.count
  end

  def user_input(user_guess)
    @guessed_words.push(user_guess)
    @user_guess = user_guess.split("")
    if @guessed_words.include?(user_guess)
      @guesses_remaining += 1
    end
  end

  def test_guess
    if
      @user_guess == @word
      @is_over = true
    else
      is_over = false
    end
    @is_over
  end

  def test_guess_count
  @guesses_remaining -= 1
    if
      @guesses_remaining == 0
      is_over = true
    else
      is_over = false
    end
    @guesses_remaining
  end

  def rewrite_array
    @word.each_with_index do |i, index|
      if i == @user_guess[index]
        @guess_array[index] = i
      end
    end
  end

end



game1 = WordGame.new
game1.word_to_guess("word")
game1.user_input("card")
p game1.test_guess
p game1.test_guess_count



