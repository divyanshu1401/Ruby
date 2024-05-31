my_lambda = -> do
    arr = [1,2,3]
    arr.each do |num|
        print num
    end
end
my_lambda.call

lambda_with_arguments = -> (num1, num2) do
    puts "\nlambda with arguments #{num1 * num2}"
end

lambda_with_arguments.call(2,3)

def my_function(arg)
    arg.call()
end

my_function(my_lambda)




