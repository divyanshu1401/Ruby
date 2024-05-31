# Given a string, remove the vowels from the string.

# Example 1:

# Input: S = "welcome to geeksforgeeks"
# Output: wlcm t gksfrgks
# Explanation: Ignore vowels and print other
# characters 
# Example 2:

# Input: S = "what is your name ?"
# Output: wht s yr nm ?
# Explanation: Ignore vowels and print other
# characters 

def remove_vowles(str)
    str.delete("aeiou")
end

puts remove_vowles("what is your name ?")