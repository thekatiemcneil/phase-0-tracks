class WordGame
attr_accessor :is_over, :guess_count, :word, :user_guess

  def initialize(word)
    @word = word
    @is_over = false
    @guess_count = 0
  end

  def too_many_guesses
    if guess_count >= @word.length
      @is_over = true
    end
  end



end
