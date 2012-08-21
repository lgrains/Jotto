class Player < ActiveRecord::Base
  has_many :user_guesses, :class_name => "Word",:foreign_key => "guess_word_for_player_id"
  has_one :secret_word, :class_name => "Word",:foreign_key => "secret_word_for_player_id"
end
