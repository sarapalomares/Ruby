class User
      attr_accessor :first_name, :last_name #creates the getter and setter methods attr_reader and attr_writer
      def initialize(f_name, l_name)
            @first_name = f_name
            @last_name = l_name
      end
      def my_name
            puts "I am #{@first_name}. Nice to meet you!"
      end
end
person = User.new("Sara", "Palomares")
person.my_name
# -----------------------------------------------------------------------------------------------------
class CodingDojo
      @@no_of_branches = 0 #class variable. always begins with @@ and must be initialized before used in methods. rarely used.
      def initialize(id, name, address) #local variable. defined in a method. begins with a lowercase or _
            @branch_id = id #instance variable. always begins with @ and has a default value of nil
            @branch_name = name
            @branch_address = address
            @@no_of_branches += 1
            puts "\nCreated branch #{@@no_of_branches}" #\n creates a new line
      end

      def hello
            puts "Hello CodingDojo!"
      end

      def displayAll
            puts "Branch ID: %d" % @branch_id
            puts "Branch Name: %s" % @branch_name
            puts "Branch Address: %s" % @branch_address
      end
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.displayAll
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.displayAll
# -----------------------------------------------------------------------------------------------------
#Public, Private, Protected
class MyObj
      def public_method
      end

      protected # all methods that follow will be protected methods

      def protected_method
      end

      def protected_method2
      end

      private # all methods that follow will be made private: not accessible for outside objects

      def private_method
      end

      def private_method2
      end
end
#by default, all methods in Ruby classes are public - accessible by anyone.
# -----------------------------------------------------------------------------------------------------
#Inheritance:
class Mammal
  def initialize
    puts 'I am alive!'
  end
  def breathe
    puts 'Inhale and exhale'
  end
end

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    return self #allows chaining
  end
  def speak
    puts "Meow"
    return self #allows chaining
  end
  def who_am_i
    puts self
    return self #allows chaining
  end
end
# -----------------------------------------------------------------------------------------------------
