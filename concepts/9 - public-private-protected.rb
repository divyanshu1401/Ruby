class Stock

    def initialize(item, quantity)
        @item = item
        @quantity = quantity
    end

    def buy_items(count)
        if(count > 0)
            update_quantity(quantity + count)
        end
    end

    def sell_items(count)
        if(count > 0 && count <= @quantity)
            update_quantity(@quantity - count)
        end
    end

    def self.welcome
        puts "hello"
        goodbye
    end

    private

    def update_quantity(num)
        @quantity = num
        puts "#{@item} quantity in stock : #{@quantity}"
    end

    def self.goodbye
        puts "goodbye"
    end

end

s1 = Stock.new("jeans", 100)
s1.sell_items(50)
# s1.update_quantity(500) #will throw error, cannot call private function from outside
Stock.welcome


class Animal

    attr_accessor :legs

    def initialize(n)
        @legs = n
    end
    protected
  
    def breathe
      puts "Inhaling and exhaling..."
    end

    def leg_count(a1)
        puts a1.legs
    end
  end
  
  class Dog < Animal
    def pant
      breathe  # This works because breathe is protected and inherited
    end

    def count(s)
        leg_count(s)
    end
  end
  
  animal = Animal.new(4)
#   puts animal.legs
  # animal.breathe will cause an error (breathe is protected)
  
  dog = Dog.new(4)
#   puts dog.legs
  dog.pant  # This works because pant is in a subclass and can access the protected method breathe
  # dog.breathe will still cause an error (breathe is protected, not public in the Dog class)
#   Animal.new.breathe
  dog.count(animal)