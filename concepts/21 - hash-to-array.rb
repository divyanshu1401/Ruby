hash1 = {
    "a" => "aaaaa",
    "b" => "bbbbbbbb",
    "c" => "cc"
}

arr = []
hash1.each do |k,v|
    arr.push([k,v])
end
arr.each do |i|
    print i
end