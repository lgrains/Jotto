require 'spec_helper'

describe Dictionary do
  before(:each) do
    @dict = Dictionary.new
  end

  it "initializes words correctly" do
    @dict.words.length.should == @dict.num_entries
  end

  it "should return random word" do
    w1 = @dict.random_word
    w2 = @dict.random_word
    w1.should_not == w2
  end



end
