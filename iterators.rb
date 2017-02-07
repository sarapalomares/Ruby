# .any? {|obj| block} -> True or False
["ant", "bear", "cat"].any? {|word| word.length >= 3}
#answer is true

# .each -> calls block once for each element in self, passing that element as a parameter.
["ant", "bear", "cat"].each {|word| print word, "--"}
#answer is ant--bear--cat

# .collect {|obj| block} -> array; returns a new array with the results of running block once for every element in enum
(1..4).collect {|i| i*i}
#answer is [1,4,9,16]
(1..4).collect { "cat" }
#answer is ["cat", "cat", "cat", "cat"]

# .map {|obj| block} -> enumerator; returns a new array with the results of running block once for every element in enum. it's exactly like .collect

# .detect/.find -> enumerator; returns the first for which block is not false.
(1..10).detect { |i| i % 5 == 0 and i % 7 == 0 }
#answer is nil
(1..100).detect { |i| i % 5 == 0 and i % 7 == 0 }
#answer is 35

# .find_all {|obj| block} or .select {|obj| block} ; returns an array containing all elements of enum for which block is not false
(1..10).find_all { |i| i % 3 == 0 }
#answer is [3,6,9]

# .reject {|obj| block} -> opposite of find_all
(1..10).reject { |i| i % 3 == 0 }
#answer is [1,2,4,5,7,8,10]

# .upto(limit) -> iterates block up to the int number
5.upto(10) { |i| print i, " " }
#answer is 5 6 7 8 9 10
