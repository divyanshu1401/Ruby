# Given a sorted array Arr of size N and a value X, find the number of array elements less than or equal to X and elements more than or equal to X. 

# Example 1:

# Input:
# N = 7, X = 0
# Arr[] = {1, 2, 8, 10, 11, 12, 19}
# Output: 0 7
# Explanation: There are no elements less or
# equal to 0 and 7 elements greater or equal
# to 0.
# Example 2:

# Input:
# N = 7, X = 5
# Arr[] = {1, 2, 8, 10, 11, 12, 19}
# Output: 2 5
# Explanation: There are 2 elements less or
# equal to 5 and 5 elements greater or equal
# to 5.

def smaller_or_larger(arr, x)
    index = 0
    small_count = 0
    equal_count = 0
    while arr[index] <= x do
        if arr[index] < x
            small_count += 1
        elsif arr[index] == x
            equal_count += 1
        end
        index += 1
    end
    larger_count = arr.length - small_count
    small_count += equal_count
    [small_count, larger_count]
end



arr = [1, 2, 8, 10, 11, 12, 19]
x = 0
puts smaller_or_larger(arr, x).join(', ')