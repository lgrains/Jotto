desc "Fill in the bitstring_int fields"
task :bitstring_int => :environment do 
  WordSet.all.each do |ws|
    ws.bitstring_int = ws.bitstring.to_i(2)
    ws.save!
  end
end