class Game < ActiveRecord::Base
  has_one :dictionary
  has_many :players
end
