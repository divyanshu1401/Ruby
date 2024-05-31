# Given an array Arr of N positive integers. Your task is to find the elements whose value is equal to that of its index value ( Consider 1-based indexing ).

# Note: There can be more than one element in the array which have the same value as its index. You need to include every such element's index. Follows 1-based indexing of the array.

# Example 1:

# Input:
# N = 5
# Arr[] = {15, 2, 45, 12, 7}
# Output: 2
# Explanation: Only Arr[2] = 2 exists here.
# Example 2:

# Input: 
# N = 1
# Arr[] = {1}
# Output: 1
# Explanation: Here Arr[1] = 1 exists.

array = [15, 2, 45, 12, 5]
sol_arr = []

array.each_with_index do |num,index|
    if(num == index + 1)
        sol_arr.push(num)
    end
end

for num in sol_arr do
    puts num
end
