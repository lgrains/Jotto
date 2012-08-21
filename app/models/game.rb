class Game < ActiveRecord::Base
  has_one :dictionary
  has_many :players
  
  def initialize(params={})
    super(params)
    self.dictionary = Dictionary.new  #fills in all the words too
  end
end
