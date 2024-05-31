print "Enter a string : "
str1 = gets.chomp

str1 = str1.chars
str2 = ""
length = str1.length
(length - 1).downto(0) do |index|
    str2 += str1[index]
end

puts str2