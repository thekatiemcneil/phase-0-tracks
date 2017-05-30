require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

  it "#record_word records user 1's word" do
    expect(game.record_word("word")).to eq "word"
  end

  it "#set_guess_count sets the number of guesses allowed" do
    @word_to_guess = "word"
    @number_of_guesses = 0
    expect(game.set_guess_count).to eq 4
  end

  it "#record_guess takes in user 2's guess" do
    expect(game.record_guess("card")).to eq "card"
  end

  it "#check_guess checks guess to see if it is correct" do
    expect(game.check_guess).to eq true
  end

  it "#already_guessed? checks to see if word has already been guessed" do
    current_guess = "word"
    word_to_guess = "card"
    expect(game.already_guessed?).to eq false
  end

  it "#update_guess_count updates guess count" do
    @number_of_guesses = 1
    expect(game.update_guess_count).to eq 0
  end

  it "updates guessed letters string" do
    expect(game.update_letters_garray).to eq []
  end

end