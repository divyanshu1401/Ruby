a = {a:100, b:nil} 
  
# declaring Hash value 
b = {a:100, c:nil, b:200} 
  
# declaring Hash value 
c = {a:100} 
  
  
# removing nil value from Hash 
puts "removing nil value : #{a.compact!}\n\n"
  
# removing nil value from Hash 
puts "removing nil value : #{b.compact!}\n\n"
  
# removing nil value from Hash 
puts "removing nil value : #{c.compact!}\n\n"
