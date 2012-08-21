class Player < ActiveRecord::Base
  has_many :user_guesses
  has_one :secret_word
end
