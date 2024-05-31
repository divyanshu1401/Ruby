# Given a string s , return reverse of the string as output.

# Example 1:

# Input: 
# s = "GeeksforGeeks"
# Output: "skeeGrofskeeG" 
# Explanation: Reverse string of "GeeksforGeeks" will be "skeeGrofskeeG"
# Example 2:

# Input: 
# s = "ReversE"
# Output: "EsreveR"
# Explanation: Reverse string of "ReversE" will be "EsreveR"

def reverse_string(str)
    index = str.length - 1
    res = ""
    (index).downto(0).each do |i|
        res += str[i]
    end
    res
end

puts reverse_string("hello")