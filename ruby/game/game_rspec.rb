require_relative 'game_code'

describe WordGame do
  let(:wordgame) { WordGame.new }
describe :word => "word", :guesses_remaining => 1, :user_guess => "word"

  it "takes in the word to guess and defines guess array" do
    expect(wordgame.word_to_guess("yes")).to eq "---"
  end

# USER_INPUT
  it "takes in the user guess and converts it to a character array." do
    expect(wordgame.user_input("mop")).to eq ["m", "o", "p"]
  end

# # TEST_GUESS
  it "determines if word has been guessed" do
    expect(wordgame.test_guess).to eq true
  end

  # TEST_GUESS_COUNT
  it "checks if guess count has been met" do
    expect(wordgame.test_guess_count).to eq false
  end

# REWRITE_ARRAY
  it "re-writes the guess array with correctly guessed letters" do
    expect(wordgame.test_guess).to eq ["w", "o", "r", "d"]
  end

end