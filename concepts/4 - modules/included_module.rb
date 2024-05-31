module IncludedModule
  def self.included(base)
    puts "I am included in class #{base}"
  end
  
  def my_method
    puts "Hello from IncludedModule"
  end
end
  
