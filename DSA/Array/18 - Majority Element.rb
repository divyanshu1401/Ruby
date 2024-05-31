# Given an array nums of size n, return the majority element.

# The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

# Example 1:

# Input: nums = [3,2,3]
# Output: 3
# Example 2:

# Input: nums = [2,2,1,1,1,2,2]
# Output: 2

# @param {Integer[]} nums
# @return {Integer}
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    countx = 0
    maj = -1
    temp = nums.uniq
    temp.each do |num|
        # puts "for num #{num}"
        puts "#{nums.count(num)}"
        if nums.count(num)>countx
            puts num
            countx = nums.count(num)
            maj = num
            # puts "#{nums.join(',')} #{num} #{countx}"
        end
    end
    maj
end

puts majority_element([6,5,5])