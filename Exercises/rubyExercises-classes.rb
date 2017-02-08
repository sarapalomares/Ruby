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
booger = User.new("Sara", "Palomares")
booger.my_name
# -----------------------------------------------------------------------------------------------------
class CodingDojo
      @@no_of_branches = 0 #class variable. always begins with @@
      def initialize(id, name, address) #local variable. begins with a lowercase or _
            @branch_id = id #instance variable. always begins with @
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
