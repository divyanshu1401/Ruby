print "Enter a number : "
num1 = gets.chomp.to_i

def factorial(num)
    num <= 1 ? 1 : num * factorial(num - 1)
end

puts factorial(num1)
