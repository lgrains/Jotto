class Player < ActiveRecord::Base
  # attr_accessible :user_guesses_attributes, :words
  has_many :user_guesses 
  has_many :word_sets, :through => :user_guesses
  
  # accepts_nested_attributes_for :user_guesses,:words
  
  has_and_belongs_to_many :games
  
  def initialize(name, params={})
    super(params)
    self.name = name    
  end
  
  def secret_word=(word)
    word_set = find_word_set(word)
    if !word_set
      raise "\'#{word}\' isn't in the game dictionary"
    else
      word_set.word_used_in_game_by = self.id
      word_set.save!
      self.secret_word_id = word_set.id
      self.save!
    end
  end
  
  def secret_word
    WordSet.find(secret_word_id).word
  end
  
  def user_guess=(word)
    word_set = find_word_set(word)
    if !word_set
      raise "\'#{word}\' isn't in the game dictionary"
    elsif word_set.word_used_in_game_by == self.id
      raise "You have already used \'#{word}\' in this game"
    else
      self.word_sets << word_set
    end
  end
  
  def user_guesses
     self.word_sets
  end
  
  def set_jots(word, jots)
    ws = find_word_set(word)
    jte = find_join_table_element(self.id, ws.id)
    jte.jots = jots
    jte.save!
  end
  
  def get_jots(word)
    ws = find_word_set(word)
    join_table_element = find_join_table_element(self.id, ws.id)
    join_table_element.jots
  end
  
  private
    
  def find_word_set(word)
    game = self.games[0]
    dict_id = game.dictionary.id
    word_arr = WordSet.where(dictionary_id = dict_id)
    word_set = word_arr.to_a.detect{|o| o.word == word}
    word_set
  end
  
  def find_join_table_element(player_id, word_set_id)
     UserGuess.where("player_id = ? and word_set_id = ?", player_id, word_set_id).first
  end
end
