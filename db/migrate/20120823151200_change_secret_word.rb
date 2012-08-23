class ChangeSecretWord < ActiveRecord::Migration
  def up
    drop_table :secret_words
    add_column :players, :secret_word_id, :integer
  end

  def down
    create_table :secret_words, :id=>false do |t|
      t.integer :player_id
      t.integer :word_set_id
    end
    remove_column :players, :secret_word_id
  end
end
