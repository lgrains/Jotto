class AddJoinTableForGamesAndUsers < ActiveRecord::Migration
  def up
    create_table :games_players, :id=> false do |t|
      t.references :game, :player
    end
    remove_column :players, :game_id
  end

  def down
    drop_table :games_players
    add_column :players, :game_id, :integer
  end
end
