print "Enter a number : "
num1 = gets.chomp.to_i

def palindrome(num)
    sum = 0
    temp = num
    while(temp > 0)
        sum = (sum * 10) + (temp % 10)
        temp/=10
    end
    sum == num ? true : false
end

puts palindrome(num1)