# Given an array of N distinct elements, the task is to find all elements in array except two greatest elements in sorted order.


# Example 1:

# Input : 
# a[] = {2, 8, 7, 1, 5}
# Output :
# 1 2 5 
# Explanation :
# The output three elements have two or
# more greater elements.   
# Example 2:

# Input :
# a[] = {7, -2, 3, 4, 9, -1}
# Output :
# -2 -1 3 4

def two_greater_elements(arr)
    arr_res = arr.sort()
    arr_res[0, arr.length - 2]
end

arr = [2, 8, 7, 1, 5]
puts two_greater_elements(arr)