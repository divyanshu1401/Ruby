#Ruby class representing a basic bank account. It should have methods to deposit, withdraw, and check the balance.

class BankAccount

    attr_accessor :balance

    def initialize
        @balance = 0
    end

    def withdraw(amount)
        if(amount > @balance)
            puts "Cannot withdraw. Not sufficient balance"
            return
        end
        @balance -= amount
    end

    def deposit(amount)
        @balance += amount
    end

end


myAccount = BankAccount.new()
puts myAccount.balance
myAccount.deposit(1000)
puts myAccount.balance
myAccount.withdraw(2000)
myAccount.withdraw(200)