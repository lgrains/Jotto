class Word < ActiveRecord::Base

  belongs_to :dictionary
  belongs_to :player

  def initialize(word, params={})    
    super(params)
    self.word = word
    self.bitstring = '0'*26
    self.word.codepoints.each{|i| self.bitstring[i-97] = '1'}

  end

  def to_s
    "Word: " + word + " Bitstring: " + bitstring
  end

  #This would make a good one-liner for J Norman
  def num_common_letters(other)
    (self.bitstring.to_i(2) & other.bitstring.to_i(2)).to_s(2).count('1')     
  end

end

class SecretWord < Word
  belongs_to :player

  def self.set(player_id, word) 
    #only 1 secret word per player per game
    w = Word.find_by_word(word)
    w.player_id = player_id
    w.type='SecretWord'
    w.save!
  end

end

class UserGuess < Word
  belongs_to :player

  def self.set(player_id,word,jots)
    w = Word.find_by_word(word)
    if w.type != 'SecretWord'
      w.player_id = player_id
      w.type = 'UserGuess'
      w.jots = jots
      w.save!
    else
      raise GuessedSecretWord
    end
  end
end
