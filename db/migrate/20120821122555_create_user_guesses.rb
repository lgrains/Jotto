class CreateUserGuesses < Word
  def change
    create_table :user_guesses do |t|
      t.integer :num_jots
      t.integer :player_id

      t.timestamps
    end
  end
end
