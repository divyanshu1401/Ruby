# "I don't care about arguments!"

t = Proc.new { |x,y| puts "I don't care about arguments! #{x.class} #{y}"}
t.call()
t.call(1)
t.call(1,2)
t.call(1,2,3)