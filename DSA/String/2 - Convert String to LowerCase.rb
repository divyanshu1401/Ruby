# Given a string s. The task is to convert characters of string to lowercase.

# Example 1:

# Input: 
# s = "ABCddE"
# Output: "abcdde"
# Explanation: A, B, C and E are converted to a, b, c and e thus all uppercase characters of the string converted to lowercase letter.
# Example 2:

# Input: 
# s = "LMNOppQQ"
# Output: "lmnoppqq"
# Explanation: L, M, N, O, and Q are converted to l, m, n, o and q thus all uppercase characters of the string converted to lowercase letter.

class String
    def to_lower_casex
        res = ""
        chars = self.chars
        chars.each do |ch|
            if ch.ord < 97
                res += (ch.ord + 32).chr
            else
                res += ch
            end
        end
        res
    end
end

puts "ABcDEfg".to_lower_casex