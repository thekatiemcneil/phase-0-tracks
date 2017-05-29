class WordGame
attr_accessor :is_over, :guesses_remaining, :word, :user_guess, :guess_array

  def initialize
    @is_over = false
  end

  def word_to_guess(word)
    @word = word.split("")
    @guesses_remaining = @word.count
    @guess_array = "-" * @word.count
  end

  def user_input(user_guess)
    @user_guess = user_guess.split("")
  end

  def test_guess
  @guesses_remaining -= 1
    if
      @user_guess == @word
      @is_over = true
      puts "YOU GOT IT!!!!"
    elsif
      @guesses_remaining == 0
      is_over = true
      puts "YOU RAN OUT OF GUESSES"
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
  end

end
