require 'spec_helper'

describe WordSet do
  subject {WordSet.new('abhor')}
  
  it {should be_valid}
  
  it "should have correct bitstring" do
    subject.bitstring.should == "11000001000000100100000000"
  end  
  
  it "returns correct number of common letters with another Word" do
    word1 = WordSet.new("abide")
    word2 = WordSet.new( "files")
    subject.num_common_letters(word1).should == 2
    subject.num_common_letters(word2).should == 0
    word1.num_common_letters(word1).should == 5
  end
end
