x = (1..20)

# .member?(val) => true or false
puts x.member?(5)
puts x.member?("D")

# .include?(value) => true or false
puts "It does include 19!!" if x.include? 19

# .last => returns the last object in range
puts "The last number of this range is " + x.last.to_s

# .max => returns the maximum value in range
puts "The maximum number of this range is " + x.max.to_s

# .min => returns the minimum value in range
puts "The minimum number of this range is " + x.min.to_s
