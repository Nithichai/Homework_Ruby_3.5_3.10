%w(alice bob carol).each_with_custom_index(3,2) do |person,index|
  puts ">> #{person} is number #{index}"
end
