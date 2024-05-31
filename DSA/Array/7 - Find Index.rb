# Given an unsorted array arr[] of n integers and a key which is present in this array. You need to write a program to find the start index( index where the element is first found from left in the array ) and end index( index where the element is first found from right in the array ).(0 based indexing is used)
# If the key does not exist in the array then return -1 for both start and end index in this case.

# Example 1:

# Input:
# n = 6
# arr[] = { 1, 2, 3, 4, 5, 5 }
# key = 5
# Output:  {4, 5}
# Explanation:
# 5 appears first time at index 4 and appears last time at index 5.
# (0 based indexing)
# Example 2:

# Input:
# n = 6
# arr = { 6, 5, 4, 3, 1, 2 }
# key = 4
# Output:  {2, 2} 
# Explanation:
# 4 appears first time and last time at index 2.

def find_index(arr, num)
    first = -1
    last = -1

    (0..arr.length-1).each do |i|
        if(arr[i] == num)
            first = i
            break
        end
    end

    (arr.length-1).downto(0).each do |i|
        if(arr[i] == num)
            last = i
            break
        end
    end

    [first, last]
end
arr = [6, 5, 4, 3, 1, 2]
key = 4
sol_arr = find_index(arr,key)
puts sol_arr.join(',')