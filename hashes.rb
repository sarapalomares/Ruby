# .delete(key) => deletes and returns a value associated with the key
# e.g. h = {:first_name => "Coding", :last_name => "Dojo"}; h.delete(:last_name); print h      #=> [:first_name, "Coding"]
x = {:f_name => "Sara", :l_name => "Palomares"} #all keys start with a colon :
x.delete(:l_name)
puts x[:f_name], x[:l_name]

# .empty? => returns true if hash contains no key-value pairs
x = {:f_name => "Sara", :l_name => "Palomares"}
puts x.empty?

# .has_key?(key) => true or false
x = {:f_name => "Sara", :l_name => "Palomares"}
if x.has_key?(:f_name)
      puts "X has a key called :f_name!"
else
      puts "X does not have a key called :f_name!"
end

# .has_value?(value) => true or false
x = {:f_name => "Sara", :l_name => "Palomares"}
if x.has_value?("Sara")
      puts "X has a value called Sara!"
else
      puts "X does NOT have a value called Sara"
end
