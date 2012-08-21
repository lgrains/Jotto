require 'spec_helper'

describe Word do
  subject {Word.new('abhor')}
  
  it {should be_valid}
  
  it "should have correct bitstring" do
    subject.bitstring.should == "11000001000000100100000000"
  end  
  
  it "returns correct number of common letters with another Word" do
    word1 = Word.new("abide")
    word2 = Word.new( "files")
    subject.num_common_letters(word1).should == 2
    subject.num_common_letters(word2).should == 0
    word1.num_common_letters(word1).should == 5
  end
end
