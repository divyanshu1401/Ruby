# In Ruby, symbols are immutable, reusable constants represented internally by an integer value. 
# They are often used as identifiers, keys for hashes, and for efficient string-like operations 
# due to their immutability and performance characteristics.

# Key Properties of Symbols
# Immutability: Symbols are immutable, meaning they cannot be changed once created.
# Uniqueness: Each symbol is unique and reused across the program, making comparisons faster.
# Memory Efficiency: Symbols are stored only once in memory, unlike strings that create a new object
# each time they are used.

#uniquenss
sym1 = :my_symbol
sym2 = :my_symbol

# Check if both symbols are the same object
puts sym1.object_id == sym2.object_id  # Output: true

# Attempting to mutate a symbol directly is not possible
# Instead, any operation on a symbol returns a new object

new_sym = sym1.to_s.upcase.to_sym
puts ("#{new_sym.object_id} #{sym1.object_id}")
