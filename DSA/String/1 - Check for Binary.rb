# Given a non-empty sequence of characters str, return true if sequence is Binary, else return false

# Example 1:

# Input:
# str = 101
# Output:
# 1
# Explanation:
# Since string contains only 0 and 1, output is 1.
# Example 2:

# Input:
# str = 75
# Output:
# 0
# Explanation:
# Since string contains digits other than 0 and 1, output is 0.

def check_for_binary(str)
    (0..str.length - 1).each do |i|
        if(str[i] != "0" && str[i] != "1")
            return false
        end
    end
    return true
end

puts(check_for_binary("101010"))