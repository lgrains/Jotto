class AddHasManyThroughTables < ActiveRecord::Migration
  def up
    create_table :user_guesses do |t|
      t.integer :player_id
      t.integer :word_set_id
      t.integer :jots
    end
    
    create_table :secret_words, :id=>false do |t|
      t.integer :player_id
      t.integer :word_set_id
    end
    

  end

  def down
    drop_table :user_guesses
    drop_table :secret_words
  end
end