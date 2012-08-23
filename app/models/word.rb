class Word < ActiveRecord::Base

  belongs_to :dictionary
  has_many :user_guesses
  has_many :players, :through => :user_guesses
  has_one :secret_word
  has_one :player, :through => :secret_word
  

  def initialize(word, params={})    
    super(params)
    self.word_unit = word
    self.bitstring = '0'*26
    self.word_unit.codepoints.each{|i| self.bitstring[i-97] = '1'}

  end

  def to_s
    "Word: " + word_unit + " Bitstring: " + bitstring
  end

  #This would make a good one-liner for J Norman
  def num_common_letters(other)
    (self.bitstring.to_i(2) & other.bitstring.to_i(2)).to_s(2).count('1')     
  end

end

