# You are given an array A of size N. You need to print elements of A in alternate order (starting from index 0).

# Example 1:

# Input:
# N = 4
# A[] = {1, 2, 3, 4}
# Output:
# 1 3
# Example 2:

# Input:
# N = 5
# A[] = {1, 2, 3, 4, 5}
# Output:
# 1 3 5

def printAlternateElements(arr)
    index = 0
    while index < arr.length do
        puts "#{arr[index]}\n"
        index = index + 2
    end
end

arr = [1,2,3,4,5]
printAlternateElements(arr)

