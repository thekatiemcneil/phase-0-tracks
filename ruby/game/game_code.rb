class WordGame
attr_accessor :is_over, :guesses_remaining, :word, :user_guess

  def initialize
    @is_over = false
  end

  def word_to_guess(word)
    @word = word
    @guesses_remaining = @word.length
  end

  def test_guess(user_guess)
  @user_guess = user_guess
  @guesses_remaining -= 1
    if @user_guess == @word
      @is_over = true
      puts "YOU GOT IT!!!!"
    elsif
      @guesses_remaining == 0
      is_over = true
      puts "YOU RAN OUT OF GUESSES"
      # elsif
      #   @user_guess.split(" ")
    else
      is_over = false
    end
  end

end

game1 = WordGame.new
game1.word_to_guess("yes")
game1.test_guess("sap")
game1.test_guess("cop")
game1.test_guess("yes")
p game1
