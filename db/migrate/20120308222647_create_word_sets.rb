class CreateWordSets < ActiveRecord::Migration
  def change
    create_table :word_sets do |t|
      t.integer :dictionary_id
      t.string :word
      t.string :bitstring
      t.timestamps
    end
  end
end
