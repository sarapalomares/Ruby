class Mammal
      attr_accessor :health

      def initialize
            puts "I am alive!"
            self
      end

      def DisplayHealth
            puts "My health is #{@health}"
            self
      end

end
