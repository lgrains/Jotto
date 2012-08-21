class CreateSecretWords < ActiveRecord::Migration
  def change
    create_table :secret_words do |t|
      t.integer :word_id
      t.integer :player_id
      t.timestamps
    end
  end
end
