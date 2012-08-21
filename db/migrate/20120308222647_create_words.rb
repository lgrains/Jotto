class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :type  #will be nil, guess,secret
      t.integer :player_id
      
      t.integer :dictionary_id
      t.string :word
      t.string :bitstring
      t.timestamps
    end
  end
end
