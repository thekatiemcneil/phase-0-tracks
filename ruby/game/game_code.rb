class WordGame
  attr_accessor :guess_count, :is_over, :guesses_remaining, :current_guess

  def initialize(word)
    @allowed_guesses = word.chars.length
    @guess_count = word.length
    @is_over = false
    @word = word
    @current_guess = "-" * word.chars.length.to_i
  end

  def test_guess(user_guess)
    user_guess.chars.each do |letter|
    end
    for x in @word.chars.length.to_i
      if
        @user_guess[x - 1] == @word[x - 1]
          @current_guess[x - 1] = @user_guess[x - 1]
      end
    end
  end
  # could we use map! to rewrite the array??
  # What if I used indexes to compare each of the characters of the arrays?
    # user_guess(x) == word(x)
      # current_guess(x-1) = user_guess(x)

end

game1 = WordGame.new("word")
game1.test_guess("cord")