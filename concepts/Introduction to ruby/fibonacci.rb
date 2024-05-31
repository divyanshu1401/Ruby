

def fibonacci(num)
    return num if num <= 1 
    return fibonacci(num - 2) + fibonacci(num - 1)
end

puts fibonacci(6)