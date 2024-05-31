# Given a number N. Your task is to check whether it is fascinating or not.
# Fascinating Number: When a number(should contain 3 digits or more) is multiplied by 2 and 3, and when both these products are concatenated with the original number, then it results in all digits from 1 to 9 present exactly once.

# Example 1:

# Input: 
# N = 192
# Output: Fascinating
# Explanation: After multiplication with 2
# and 3, and concatenating with original
# number, number will become 192384576 
# which contains all digits from 1 to 9.
# Example 2:

# Input: 
# N = 853
# Output: Not Fascinating
# Explanation: It's not a fascinating
# number.

def fascinating_number(num)
    return false if num < 100
    num = num.to_s + (num * 2).to_s + (num * 3).to_s
    chars = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    chars.each do |char|
        if(num.count(char) != 1)
        return false
        end
    end
    return true
end

puts fascinating_number(819)