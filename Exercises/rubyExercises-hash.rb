=begin
      A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

      Hashes enumerate their values in the order that the corresponding keys were inserted.

      http://ruby-doc.org/core-2.4.0/Hash.html
=end

=begin
      Symbol objects represent names and some strings inside the Ruby interpreter. They are generated using the :name and :"string" literals syntax, and by the various to_sym methods. The same Symbol object will be created for a given name or string for the duration of a program's execution, regardless of the context or meaning of that name. Thus if Fred is a constant in one context, a method in another, and a class in a third, the Symbol :Fred will be the same object in all three contexts.
=end

x = (1..5)

puts "Class Name: #{x.class}"
puts "It does include 3!!" if x.include? 3
puts "The last number of this range is " + x.last.to_s
puts "The maximum number of this range is " + x.max.to_s
puts "The minimum number of this range is " + x.min.to_s

y = ("a".."z")
puts y.to_a.shuffle.to_s

# Creating a Hash
x = {"first_name" => "Coding", "last_name" => "Dojo"}
puts x["first_name"], x["last_name"]
puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

y = {:first_name => "Coding", :last_name => "Dojo"} # Symbols - Used to represent a key in the hash. Always start with a colon :
puts "Y is ", y
puts y[:first_name], y[:last_name]

puts "DELETING :first_name"
y.delete(:first_name)
puts "Y is now ", y

if y.has_key?(:first_name)
      puts "Y has a key called :first_name"
else
      puts "Y does not have a key called :first_name"
end

if y.has_value?("Dojo")
      puts "Y has a value called Dojo"
else
      puts "Y does NOT have a value called Dojo"
end
