class AddWordUsedToWordSet < ActiveRecord::Migration
  def up
    add_column :word_sets, :word_used_in_game_by, :integer
  end
  
  def down
    remove_column :word_sets, :word_used_in_game_by
  end
end
