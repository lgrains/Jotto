require 'spec_helper'

describe UserGuess do
  before(:all) do
    @dict = Dictionary.new
  end
  
  it "should set user guess correctly" do
     p = Player.create('Bill')
      w = Word.find_by_word('clips')
      UserGuess.set(p.id, w.word, 3)
      UserGuess.find_by_player_id(p.id).word.should == w.word
      UserGuess.find_by_player_id(p.id).jots.should == 3
  end
end
