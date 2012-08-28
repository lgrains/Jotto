class WordSet < ActiveRecord::Base

  belongs_to :dictionary
  has_many :user_guesses
  has_many :players, :through => :user_guesses


  def initialize(word, params={})    
    super(params)
    self.word = word
    self.bitstring = '0'*26
    self.word.codepoints.each{|i| self.bitstring[i-97] = '1'}

  end

  def to_s
    word
  end

  #This would make a good one-liner for J Norman
  def num_common_letters(other)
    (self.bitstring.to_i(2) & other.bitstring.to_i(2)).to_s(2).count('1')     
  end

end

