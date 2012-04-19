class AddBitstringInt < ActiveRecord::Migration
  def change
    add_column :word_sets, :bitstring_int, :integer
  end


end
