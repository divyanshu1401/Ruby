class BankAccount
    def initialize(user_name, age, balance = 0)
        @username = user_name
        @age = age
        @balance = balance
    end

    def deposit(amount)
        if(amount > 0)
            update_balance(@balance + amount)
        end
    end

    def withdraw(amount)
        if(amount > 0)
            update_balance(@balance - amount)
        end
    end

    def method_missing(method_name, *args)
        puts "You tried to call #{method_name} with arguments #{args.join(', ')}"
        # Here you can implement custom behavior, like raising an error or performing an alternative action
      end
    

    private

    def show_balance
        puts "current balance is #{@balance}"
    end

    def update_balance(balance)
        @balance = balance
        show_balance
    end
end

ba1 = BankAccount.new("Divyanshu", 27, 100)
ba1.deposit(100)
ba1.withdraw(100)
# ba1.update_balance(10000) # (NoMethodError) private method `update_balance' called for #<BankAccount:0x00007fa957093e38 @username="Divyanshu", @age=27, @balance=100900> 
ba1.send("update_balance", 1000)

puts "enter 'deposit' for deposit and 'withdraw' for withdraw"
choice = gets.chomp

ba1.send(choice,100)