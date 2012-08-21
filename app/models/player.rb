class Player < ActiveRecord::Base
  attr_accessible :user_guesses_attributes, :secret_word_attributes, :words
  has_many :user_guesses  
  has_one :secret_word
  has_many :words
  
  accepts_nested_attributes_for :user_guesses, :secret_word,:words
  
  
  attr_accessible :players_attributes
  has_many :players
  accepts_nested_attributes_for :players
  
  def initialize(name, params={})
    super(params)
    self.name = name
    
  end
end
