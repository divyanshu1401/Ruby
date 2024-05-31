hash1 = {a: 3, b: 1, c: 2, e:90, d:90, f:81}
vals = hash1.values.sort
hash2 = {}
vals.each do |val|
    key = hash1.key(val)
    hash1.delete(key)
    hash2[key] = val
end



puts hash2