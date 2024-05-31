print "Enter a string : "
str = gets.chomp
hash1 = Hash.new(0)

str.each_char do |chr|
    hash1[chr] = hash1[chr] + 1
end

puts hash1