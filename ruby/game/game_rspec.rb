require_relative 'game_code'

describe WordGame do
  let(:wordgame) { WordGame.new }

  it "takes in the word to guess" do
    expect(wordgame.word_to_guess("yes")).to eq "yes"
  end

  it "determines if guess count has been met" do
    expect(wordgame.too_many_guesses(@guess_count).to eq true
  end

end