def yo
    puts "my name is "
    yield
    puts "anf you are?"
end

yo {puts "slim shady"}