class Player < ActiveRecord::Base
  attr_accessible :user_guesses_attributes, :secret_word_attributes, :words
  has_many :user_guesses, :through => :words  
  has_one :secret_word, :through => :words
  has_many :words
  
  accepts_nested_attributes_for :user_guesses, :secret_word,:words
  
  has_and_belongs_to_many :games
  
  def initialize(name, params={})
    super(params)
    self.name = name
    
  end
end
