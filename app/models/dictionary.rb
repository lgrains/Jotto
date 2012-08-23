class Dictionary < ActiveRecord::Base
  self.table_name = "dictionary"
  
  has_many :word_sets, :dependent => :destroy
  belongs_to :game
  
  attr_accessor :num_entries
  
  def initialize(params={})
    super(params)
    @num_entries = 0
    self.save!
    add_words
  end
  
  def add_words
    File.open('db/Dictionary_5_noperms', 'r')  do |file|
      file.each_line do |line|
        word_sets << WordSet.create(line.chomp.downcase)
        @num_entries += 1
      end 
    end
    
  end  
 
  def random_word
    word_sets[rand(word_sets.length)].word
  end
  
  def to_s
    "word_sets: #{@word_sets}"
  end
  
  
end
