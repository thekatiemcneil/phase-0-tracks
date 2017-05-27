class WordGame
  attr_accessor :guess_count, :is_over, :guesses_remaining, :correct_guesses

  def initialize(word)
    @allowed_guesses = word.chars.length
    @guess_count = 0
    @is_over = false
    @word = word
    @correct_guesses = "-" * word.chars.length.to_i
  end

  def test_guess(user_guess)
  end

end

game1 = WordGame.new("word")
p correct_guesses