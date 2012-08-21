class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :dictionary_id
      t.string :word
      t.string :bitstring, :default=>'0'*26
      t.timestamps
    end
  end
end
