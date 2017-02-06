names = ["Lily", "Jarvis", "Polly", "Tessie", "Max", "Spooky"]
numbers = [4, 2, 7, 9, 3, 6, 2]

# .at or .fetch
names.at(1) #prints out Jarvis
names.fetch(2) #prints out Polly

# .delete
names.delete("Jarvis") #deletes Jarvis from the array

# .reverse
names.reverse
numbers.reverse

# .length
names.length
numbers.length

# .sort
names.sort
numbers.sort

# .slice
names.slice!(2) #returns the deleted object, Polly
numbers.slice!(3) #returns the deleted object, 9

# .shuffle
names.shuffle()
numbers.shuffle()

# .join
names.join(";") #names will print out on same line with ; in between
names.join(" ") #names will print out on same line with a space in between
numbers.join(" ") #numbers will print out on same line with ; in between
numbers.join(names[0]) #name index of 0 will print on same line side-by-side each index of the number array

# .insert
names.insert(3, "Meow!") #inserts "Meow!" at the 3rd index
numbers.insert(2, 50) #inserts 50 at the 2nd index

# values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
names.values_at(4) #prints out Max
numbers.values_at(1) #prints out 2
