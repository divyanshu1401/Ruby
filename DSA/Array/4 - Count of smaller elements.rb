# Given an sorted array A of size N. Find number of elements which are less than or equal to given element X.

 

# Example 1:

# Input:
# N = 6
# A[] = {1, 2, 4, 5, 8, 10}
# X = 9
# Output:
# 5
 

# Example 2:

# Input:
# N = 7
# A[] = {1, 2, 2, 2, 5, 7, 9}
# X = 2
# Output:
# 4

x = 9
count = 0
arr = [1, 2, 4, 5, 8, 10]
arr.each do |num|
    if num <= x
        count += 1
    else
        break
    end
end

puts count