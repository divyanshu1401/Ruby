my_lambda = lambda {|x,y| puts "Hello, lambda!" }
my_proc = Proc.new { |x,y,z|puts "Hello, proc!" }
my_lambda.call(1,2)
my_proc.call