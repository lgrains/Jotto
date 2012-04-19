require 'spec_helper'

describe Dictionary do
  before(:each) do
    @dict = Dictionary.new
  end

  # it "should set bitstring" do
  #   dict.bitstring='0'*26
  #   dict.set_bitstring
  #   dict.bitstring.should == "00000100000100100010001000"
  # end
  # 
  # it "should return random word" do
  #   Factory(:dictionary, :word => 'flies')
  #   Dictionary.random_word.should == 'flies'
  # end
  # 
  # it "returns correct number of jots" do
  #   
  # end
  
  it "initializes alpha_array correctly" do
    @dict.alpha_array[0].has_key?(:a).should be_true
    @dict.alpha_array[0].values.class.should == Array
    @dict.alpha_array[25].has_key?(:z).should be_true
  end
  
  it "initializes word_sets correctly" do
debugger
    @dict.word_sets.length.should == @dict.num_entries
  end


end
