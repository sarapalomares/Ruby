# x = (1..5)
#
# puts "Class Name: #{x.class}"
# puts "It does include 3!!" if x.include? 3
# puts "The last number of this range is " + x.last.to_s
# puts "The maximum number of this range is " + x.max.to_s
# puts "The minimum number of this range is " + x.min.to_s
#
# y = ("a".."z")
# puts y.to_a.shuffle.to_s

# Creating a Hash
# x = {"first_name" => "Coding", "last_name" => "Dojo"}
# puts x["first_name"], x["last_name"]
# puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

y = {:first_name => "Coding", :last_name => "Dojo"} # Symbols - Used to represent a key in the hash
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
