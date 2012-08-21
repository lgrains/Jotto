class CreateDictionary < ActiveRecord::Migration
  def self.up
    create_table :dictionary do |t|
      t.integer :game_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :dictionary
  end
end