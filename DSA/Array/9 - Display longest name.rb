# Given a list of names, display the longest name. If there are multiple names of the longest size then return the first occurring name .

# Example1 :

# Input:
# n = 5
# names[] = { "Geek", "Geeks", "Geeksfor", "GeeksforGeek", "GeeksforGeeks" }
# Output: GeeksforGeeks
# Explanation: name "GeeksforGeeks" has maximum length among all names. 

# Example2 :

# Input:
# n = 4
# names[] = { "Apple", "Mango", "Orange", "Banana" }
# Output: Orange
# Explanation: names "Orange" and "Banana" both have maximum length among all names but Orange comes first so answer will be "Orange". 




def longest_name(arr)
    res = arr[0]
    max_length = res.length
    arr.each do |name|
        if(name.length > max_length)
            max_length = name.length
            res = name
        end
    end
    res
end

names = [ "Geek", "Geeks", "Geeksfor", "GeeksforGeeky", "GeeksforGeeks" ]
puts longest_name(names)