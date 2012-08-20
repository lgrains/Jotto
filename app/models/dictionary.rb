class Dictionary < ActiveRecord::Base
  self.table_name = "dictionary"
  
  attr_accessor :word_list, :alpha_array, :num_entries
  has_many :word_sets
  
  def initialize(params={})
    super(params)
    #alpha_array is an array of hashes of the form {:a => []}, :b => []}
    @alpha_array = Array.new(26){Hash.new}
debugger
    @alpha_array.each_with_index do |hash,i|
      hash[(i+97).chr.to_sym] = Array.new      
    end
    @word_sets = Array.new
    @num_entries = 0
    File.open('db/Dictionary_5_noperms', 'r')  do |file|
debugger
      file.each_line do |line|
        @word_sets << WordSet.new({:word => line.chomp.downcase})
        @num_entries += 1
      end 
    end
  end
  
 
  def random_word
    word_sets[rand(word_sets.length)].word    
  end
  
  def same_jots_as(word, num_jots)
    ws = word_sets.find_index(word)
    
  end
  
  
end
