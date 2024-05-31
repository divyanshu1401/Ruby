hash1 = {
    "a" => "aaaaa",
    "b" => "bbbbbbbb",
    "c" => "cc"
}
def max_length_value(hash1)
    key = ""
    max_len = 0
    hash1.each do |k,v|
        if v.length > max_len
            max_len = v.length
            key = k
        end
    end
    key
end
puts max_length_value(hash1)