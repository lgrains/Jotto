# This is a join table to connect a player
#   with their user_guesses
  

class UserGuess < ActiveRecord::Base
  belongs_to :player
  belongs_to :word_set
  
  attr_accessible :jots
end
