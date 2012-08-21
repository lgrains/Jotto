class CreateSecretWords < Word
  def change
    create_table :secret_words do |t|
      t.integer :player_id
      t.timestamps
    end
  end
end
