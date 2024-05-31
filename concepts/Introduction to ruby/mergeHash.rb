hash1 = {a: 1, b: 2}
hash2 = {b: 3, c: 4}

hash1.each do |key,val|
    hash2[key] = (hash2[key] || 0)+ val
end

puts hash2