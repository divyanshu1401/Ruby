hash1 = {"a"=> 1, "b"=> 5, "c"=> 30, "d"=>22}

hash2 = hash1.sort_by{|key, value| value}.last
puts hash2