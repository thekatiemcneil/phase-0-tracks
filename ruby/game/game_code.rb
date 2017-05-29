class WordGame
attr_accessor :is_over, :guess_count, :word, :user_guess

  def initialize
    @is_over = false
    @guess_count = 0
  end

  def word_to_guess(word)
    @word = word
  end

  def too_many_guesses
    if guess_count >= @word.length
      @is_over = true
    end
  end

  def test_guess(user_guess)
    @user_guess = user_guess
    if
      @user_guess == @word
        @is_over = true
    else
      is_over = false
    end
    @guess_count += 1
  end

end

game1 = WordGame.new
game1.word_to_guess("yes")
p game1
game1.test_guess("yes")