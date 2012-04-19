# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d = Dictionary.new
d.save!
File.open('db/Dictionary_5_noperms', 'r')  do |file|
  file.each_line do |line|
  puts line
    d.word_sets << WordSet.new({:word => line.chomp.downcase})
    
  end
  
end

