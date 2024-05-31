# Given a Integer array A[] of n elements. Your task is to complete the function PalinArray. Which will return 1 if all the elements of the Array are palindrome otherwise it will return 0.

# Example 1:

# Input:
# 5
# 111 222 333 444 555

# Output:
# 1

# Explanation:
# A[0] = 111 //which is a palindrome number.
# A[1] = 222 //which is a palindrome number.
# A[2] = 333 //which is a palindrome number.
# A[3] = 444 //which is a palindrome number.
# A[4] = 555 //which is a palindrome number.
# As all numbers are palindrome so This will return 1.
# Example 2:

# Input:
# 3
# 121 131 20
 
# Output:
# 0

# Explanation:
# 20 is not a palindrome hence the output is 0.

def palindrome(num)
    temp = num
    sum = 0
    while num > 0 do
        rem = num % 10
        sum = sum * 10 + rem
        num = num / 10
    end
    if(sum == temp)
        return 1
    else 
        return 0
    end
end

arr = [11,222,3333,41414,9009,991]
flag = 1
arr.each do |num|
    if(palindrome(num) == 0)
        puts "0"
        flag = 0
        break
    end
end

if flag == 1
    puts "1"
end