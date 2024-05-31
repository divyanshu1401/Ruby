# Given a stream of incoming numbers, find average or mean of the stream at every point.

# Example 1:

# Input:
# n = 5
# arr[] = {10, 20, 30, 40, 50}
# Output: 10.00 15.00 20.00 25.00 30.00 
# Explanation: 
# 10 / 1 = 10.00
# (10 + 20) / 2 = 15.00
# (10 + 20 + 30) / 3 = 20.00
# And so on.
 

# Example 2:

# Input:
# n = 2
# arr[] = {12, 2}
# Output: 12.00 7.00 
# Explanation: 
# 12 / 1 = 12.00
# (12 + 2) / 2 = 7.00

def average_stream(arr)
    avg = []
    sum = 0
    arr.each_with_index do |num, index|
        sum += num
        avg.push((sum.to_f)/(index+1))
    end
    avg
end
arr = [10, 20, 30, 40, 50]
puts average_stream(arr).join(', ')