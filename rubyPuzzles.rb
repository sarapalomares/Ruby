# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method).
x = [3,5,1,2,7,9,8,13,25,32]
puts x.reduce(:+)
x.each { |num| puts num if num > 10} #option 1
puts x.find_all {|num| num < 10} #option 2

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts x.to_a.shuffle.to_s #option 1
puts x.shuffle #option 2
x.each { |name| puts name if name.size > 5}

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
alpha_arr = Array("a".."z")
puts alpha_arr.shuffle

shuffled_arr = alpha_arr.shuffle
puts shuffled_arr.last

puts shuffled_arr.first

if ["a", "e", "i", "o", "u"].include?(shuffled_arr.first)
      puts "#{shuffled_arr.first.upcase} is a vowel - yay!"
else
      puts "#{shuffled_arr.first.upcase} is NOT a vowel"
end

# Generate an array with 10 random numbers between 55-100.
puts (0...10).map{rand(55..100)}

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.


# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character).
letter = ""
for i in 0..4
      letter +=(65+rand(26)).chr
end
puts letter

# Generate an array with 10 random strings that are each 5 characters long.
arr = []
for j in 0..9
      letter = ""
      for i in 0..4
            letter +=(65+rand(26)).chr
      end
      arr.push(letter)
end
puts arr
