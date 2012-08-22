class Game < ActiveRecord::Base
  has_one :dictionary
  
  
   has_and_belongs_to_many :players
  
  def initialize(player1="", player2="", params={})
    super(params)
    self.dictionary = Dictionary.new  #fills in all the words too
    self.players << Player.new(player1)
    self.players << Player.new(player2)
  end
end
