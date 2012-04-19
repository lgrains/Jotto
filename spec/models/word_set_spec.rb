require 'spec_helper'

describe WordSet do
  subject {WordSet.new(:word => 'abhor')}
  
  it {should be_valid}
  
  it "returns correct number of common letters with another WordSet" do
    word1 = WordSet.new(:word => "abide")
    word2 = WordSet.new(:word => "abhor")
    word3 = WordSet.new(:word => "files")
    word1.num_common_letters(word2).should == 2
    word2.num_common_letters(word3).should == 0
    word1.num_common_letters(word1).should == 5
  end
end
