arr = [22,33,44,55,66]

for i in 0...arr.count
      puts "Our current number is: #{arr[i]}, and our index is ${i}"
end

# -----------------------------------------------------------------------------------------------------

sum = 0
arr.each do |num|
      puts "The sum is #{sum}"
      sum += num
      puts "The sum is now #{sum} after adding #{num}"
end

# -----------------------------------------------------------------------------------------------------

obj = {first_name: "John", last_name: "Doe", occupation: "Instructor"}
obj.each do |key, value|
      puts "The key is: #{key}, and the value is #{value}."
end

# -----------------------------------------------------------------------------------------------------

person = {:first_name => "John", :last_name => "Doe", :occupation => "Instructor"}
      puts person[:occupation]

# -----------------------------------------------------------------------------------------------------

def dojo
      puts "Just started the function"
      yield 55
      puts "Just left the function"
end

dojo {|num| puts "The number you gave the yield is #{num}"}

# -----------------------------------------------------------------------------------------------------

module MyStuff
      def myEach
            for i in 0...self.length
                  yield self[i], i
            end
      end
end

class Array
      include MyStuff
end

arr = [22,33,44]
arr.myEach {|num, i| puts "The current number is #{num}, and the index is #{i}."}

# -----------------------------------------------------------------------------------------------------
