#The difference between 2 dots and 3 dots in Ruby is inclusion. For example

# (1..100)
# => All numbers starting from 1 and ending at 100 INCLUDING 100
#
# (1...100)
# => All numbers starting from 1 that are less than 100
#
# (1..100).include?(100)
# => true
#
# (1...100).include?(100)
# => false
# -----------------------------------------------------------------------------------------------------

#Puts ------------------------------------------------------------------------------------------------

#Strings ---------------------------------------------------------------------------------------------

#Conditionals ---------------------------------------------------------------------------------------

#Example 1:
x = 5
if x >2
      puts "x is greater than 2"
elsif x < 2 and x > 0 #notice this says "elsif -- no E"
      puts "x is 1"
else
      puts "I can't guess the number"
end #don't forget to put this when ending an if/else statement

#Example 2:
x = 5
puts "x is not 2" if x !=2
puts "x is greater than 2" if x > 2
puts "x is not 2" unless x==2

#Example 3:
age = 1
case age
when 0..2
      puts "baby"
when 3..6
      puts "little child"
when 7..12
      puts "child"
when 13..18
      puts "youth"
else
      puts "adult"
end #don't forget to put this when ending an if/else statement

# Positive energy
if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end #don't forget to put this when ending an if/else statement

# Negative energy
unless nil
  puts "I am negative"
end
unless false
  puts "I am negative"
end #don't forget to put this when ending an if/else statement

#Inline Conditionals
puts "I am positive" if "hello"
puts "I am negative" unless nil

#Loops  ------------------------------------------------------------------------------

#While Loop #1 (less common way):
$i = 0
$num = 5
begin
      puts "Inside the loop i = #{$i}"
      puts "$i is not 3" unless $i ==3
      $i += 1
end while $i < $num

#While Loop #2 (more common way):
i = 0
num = 5
while i < num do
   puts "Inside the loop i = #{i}"
   i +=1
end #don't forget to put this when ending an if/else statement

#For Loop
for i in 0..5
      puts "Value of local variable is #{i}"
      puts "i is now 3!!" if i==3
end #don't forget to put this when ending an if/else statement

#Arrays  ------------------------------------------------------------------------------
a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

puts a[0] # Answer is Matz
puts a[1] #Answer is Guido
puts a+b #Returns both array A & B on separate lines

x = a+b
puts x.to_s #Converts array A & B to a string all on one line

x = (a+b)-c #when the code below runs, "Dojo" and 9 will be excluded in the string
puts x.to_s

a.delete("Choi") #removes "Choi from the array"
puts a
puts "Length of a is #{a.length}"
