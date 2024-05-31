str = "aaaabbaaaaccb"

def count_duplicate_chars(str)
    
    result = ""
    len = str.length
    index = 0
    while index < len do
        ch2 = str[index]
        count = 0
        while ch2 == str[index + count]
            count += 1
        end
        result += str[index] + count.to_s
        index += count
    end
    puts result
end

count_duplicate_chars(str)