require_relative 'included_module'
require_relative 'extended_module'
require_relative 'prepended_module'
class MyClass
    include IncludedModule
    extend ExtendedModule
    prepend PrependedModule
end

obj = MyClass.new
obj.my_method #this will overide the call to included module method
MyClass.my_method