require_relative 'game_code'

describe WordGame do
  let(:wordgame) { WordGame.new }

  it "" do
    expect(wordgame.word_to_guess("yes")).to eq "yes"
  end

end