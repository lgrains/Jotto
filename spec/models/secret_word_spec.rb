require 'spec_helper'

describe SecretWord do
  
  before(:all) do
    @dict = Dictionary.new
  end
    
  it "should set secret word" do
    p = Player.create('Bill')
    w = Word.find_by_word('clips')
    SecretWord.set(p.id, w.word)
    SecretWord.find_by_player_id(p.id).word.should == w.word    
  end
end
