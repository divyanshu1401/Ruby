class Dog
    def speak
      puts "Woof!"
    end
  end
  
  fido = Dog.new
  
  def fido.speak #singleton methods take priority
    puts "Bow wow!"
  end
  
  fido.speak   # Output: Bow wow! 
  