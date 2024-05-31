#IMPLICIT BLOCKS
# def timer
#     t1 = Time.now
# return "No block given" unless block_given?
#     yield
#     t2 = Time.now
#     time_taken = t2 - t1
#     readable_value = sprintf("%.10f", time_taken)  
#     readable_value
# end

# puts timer {sleep(0.5)}

# def one_two_three
#     yield 1
#     yield 2
#     yield 3
#   end
# one_two_three { |number| puts number * 10 }

#EXPLICIT BLOCKS
# def welcome(&some_block)
#     puts "hello"
#     some_block.call
#     puts "bye"
# end

# welcome {puts "welcome"}