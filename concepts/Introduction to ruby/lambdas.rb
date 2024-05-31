lambda1 = -> (x){puts "I am a lambda"}
lambda1.call(10)


lambda2 = lambda {|x| puts "I am also a lambda #{x}"}
lambda2.call(10)