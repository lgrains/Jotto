# This is a join table to connect a player
#   with their secret_word

class SecretWord < ActiveRecord::Base  
  belongs_to :player
  belongs_to :word_set
end
