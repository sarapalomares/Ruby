#Puts ------------------------------------------------------------------------------

#Strings ------------------------------------------------------------------------------

#Conditionals ------------------------------------------------------------------------------

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
