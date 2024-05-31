class MyClass
  def self.class_method
    puts "This is a class method"
  end

  def instance_method
    puts "This is an instance method"
    MyClass.some_method  # Calling class method from instance method
  end

  def self.some_method
    class_method
  end

  private_class_method :class_method
end

# Calling instance method
# my_object = MyClass.new
MyClass.new.instance_method
