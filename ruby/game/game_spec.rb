grequire_relative 'game'

describe WordGame do
  let(:wordgame) { WordGame.new }

  it "takes in the word to guess and defines guess array" do
    expect(wordgame.word_to_guess("yes")).to eq "---"
  end

# USER_GUESS
  it "takes in the user guess and converts it to a character array." do
    expect(wordgame.user_guess("mop")).to eq ["m", "o", "p"]
  end

# TEST_GUESS
  it "determines if word has been guessed" do
    expect(wordgame.test_guess).to eq true
  end

  # TEST_GUESS_COUNT
  it "checks if guess count has been met" do
    expect(wordgame.test_guess_count).to eq false
  end

# REWRITE_ARRAY
  it "re-writes the guess array with correctly guessed letters" do
    expect(wordgame.test_guess).to eq true
  end

end