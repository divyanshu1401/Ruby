hash1 = [{"a"=> 10}, {"b"=> 10}, {"c"=>20}, {"a"=>2}, {"b"=>4}, {"c"=>2}]
hash2 = {}
hash1.each do |hash|
    hash2[hash.keys[0]] = (hash2[hash.keys[0]]||0) + hash.values.first
end
hash2.each do |key,val|
    count = 0
    hash1.each do |hash|
        count += 1 if hash.keys.first == key
    end
    val /= count
    hash2[key] = val
end

puts hash2