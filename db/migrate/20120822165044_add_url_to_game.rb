class AddUrlToGame < ActiveRecord::Migration
  def up
    add_column :games, :game_url, :string
  end
  
  def down
    remove_column :games, :game_url
  end
end
