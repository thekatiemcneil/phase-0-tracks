class WordGame
attr_accessor :word, :user_guess
attr_reader :guessed_words, :guesses_remaining, :is_over, :letters_guessed, :correct_guess

  def initialize
    @is_over = false
    @guessed_words = []
    @guesses_remaining = 0
    @correct_guess = false
  end

  def word_to_guess(word)
    @word = word.split("")
    @guesses_remaining = @word.count
    @letters_guessed = "-" * @word.count
  end

  def user_guess(user_guess)
    if
      @guessed_words.include?(user_guess)
        @guesses_remaining += 1
    end
    @guessed_words.push(user_guess)
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
      @guesses_remaining <= 0
      is_over = true
      correct_guess = false
    else
      is_over = false
    end
  end

  def rewrite_array
    @word.each_with_index do |i, index|
      if i == @user_guess[index]
        @letters_guessed[index] = i
      end
    end
    @letters_guessed
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
  secret_word = gets.chomp
  game.word_to_guess(secret_word)

puts "Okay, Player 2, its your turn! Please enter your first guess. Hint: this word is #{secret_word.length} letters long, and you get #{secret_word.length} guesses."
  guess_one = gets.chomp
  game.user_guess(guess_one)
  game.test_guess
  game.test_guess_count
  game.rewrite_array

until game.guesses_remaining == 0 || game.correct_guess == true
  puts "Well, you didn't get it right. Bummer. You have #{game.guesses_remaining} guesses left. Currently guessed letters: #{game.letters_guessed}"
    next_guess = gets.chomp
  game.user_guess(next_guess)
  game.test_guess
  game.test_guess_count
  game.rewrite_array
end

if
  game.guesses_remaining == 0
  puts "You ran out of guesses. Too bad you couldn't figure it out. :("
else
  game.is_over == true
  puts "YOU GOT IT! You are incredible."
end
