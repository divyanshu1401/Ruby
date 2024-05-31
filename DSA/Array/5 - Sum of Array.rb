arr = [1, 2, 4, 5, 8, 10, 14]

def sum_of_array(arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

sum = sum_of_array(arr)
avg = (sum.to_f/arr.length).to_f

puts sum,format('%.2f', avg)