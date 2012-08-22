class Player < ActiveRecord::Base
  attr_accessible :user_guesses_attributes, :secret_word_attributes, :words
  has_many :user_guesses 
  has_many :words, :through => :user_guesses
  has_one :secret_word
  has_one :word, :through => :secret_word
  
  accepts_nested_attributes_for :user_guesses, :secret_word,:words
  
  has_and_belongs_to_many :games
  
  def initialize(name, params={})
    super(params)
    self.name = name    
  end
  
  def add_secret_word(sw)
  debugger
    secret_word << sw
  end
end
