class WordGame
attr_accessor :word, :user_guess
attr_reader :guessed_words, :guesses_remaining, :is_over, :guess_array, :correct_guess

  def initialize
    @is_over = false
    @guessed_words = []
    @guesses_remaining = 0
    @correct_guess = false
  end

  def word_to_guess(word)
    @word = word.split("")
    @guesses_remaining = @word.count
    p @guesses_remaining
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
  # run through USER INPUT, TEST GUESS, TEST GUESS COUNT, and REWRITE ARRAY methods
  # add message for if guess is correct
  # add message for if guess is incorrect, to include the guess array and how many guesses they have left.
  # add message for if they are out of guesses.

puts "Its time for the word guessing game!!"
game = WordGame.new

puts "Player 1! Please enter your secret word."
  player_1 = gets.chomp
  game.word_to_guess(player_1)

puts "Player 2! Its your turn to guess the #{@guesses_remaining} letter word."

