class AddJoinTableForGamesAndUsers < ActiveRecord::Migration
  def up
    create_table :games_players, :id=> false do |t|
      t.references :game, :player
    end
  end

  def down
    drop_table :games_players
  end
end
