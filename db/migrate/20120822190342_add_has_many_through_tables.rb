class AddHasManyThroughTables < ActiveRecord::Migration
  def up
    create_table :user_guesses do |t|
      t.integer :player_id
      t.integer :word_id
      t.integer :jots
    end
    
    create_table :secret_words, :id=>false do |t|
      t.integer :player_id
      t.integer :word_id
    end
    
    remove_column :words, :type
    remove_column :words, :player_id
    remove_column :words, :jots
    rename_column :words, :word, :word_unit
  end

  def down
    drop_table :user_guesses
    drop_table :secret_words
    add_column :words, :type, :string
    add_column :words, :player_id, :integer
    add_column :words, :jots, :integer
     rename_column :words, :word_unit, :word
  end
end