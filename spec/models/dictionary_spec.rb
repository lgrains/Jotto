require 'spec_helper'

describe Dictionary do
  before(:all) do
    @dict = Dictionary.new
  end

  it "initializes words correctly" do
    @dict.word_sets.length.should == @dict.num_entries
  end

  it "should return random word" do
    w1 = @dict.random_word
    w2 = @dict.random_word
    w1.should_not == w2
  end
  
  it "finds all words with the same starting letter" do
    @dict.find_words_with_start('a').size.should == 116
  end



end
