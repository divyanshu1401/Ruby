# Given a string, remove spaces from it. 

# Example 1:

# Input:
# S = "geeks  for geeks"
# Output: geeksforgeeks
# Explanation: All the spaces have been 
# removed.
# Example 2:

# Input: 
# S = "    g f g"
# Output: gfg
# Explanation: All the spaces including
# the leading ones have been removed.

def remove_spaces(str)
    s = ""
    index = 0
    (0..str.length - 1).each do |i|
        if(str[i] != " ")
            s += str[i]
        end
    end
    s
end

puts(remove_spaces("abcd gh JK 123"))