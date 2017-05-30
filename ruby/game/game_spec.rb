require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }
  let(:word_to_guess) { "word" }
  let(:current_guess) { "word" }
  let(:guessed_words_array) { [] }

it "#record_word records user 1's word" do
  expect(game.record_word("word")).to eq "word"
end

it "#set_guess_count sets the number of guesses allowed" do
  expect(game.set_guess_count).to eq 5
end


it "#record_guess takes in user 2's guess" do
  expect(game.record_guess("card")).to eq "card"
end

it "#check_guess checks guess to see if its correct" do
end

it "#already_guessed? checks to see if word has already been guessed" do
  expect(game.already_guessed?).to eq false
end

it "#update_guess_count updates guess count" do
  expect(game.update_guess_count).to eq
end

it "updates guessed letters string" do
  expect().to eq
end

end