class CreateUserGuesses < ActiveRecord::Migration
  def change
    create_table :user_guesses do |t|
      t.integer :word_id
      t.integer :num_jots
      t.integer :player_id

      t.timestamps
    end
  end
end
