class Game < ActiveRecord::Base
  has_one :dictionary
  
  attr_accessible :players_attributes
   has_many :players
  accepts_nested_attributes_for :players
  
  def initialize(player1="", player2="", params={})
    super(params)
    self.dictionary = Dictionary.new  #fills in all the words too
    self.players << Player.new(player1)
    self.players << Player.new(player2)
  end
end
