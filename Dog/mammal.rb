class Mammal
      attr_accessor :alive, :health

      def initialize
            @alive = true
            puts "I am alive!"
            self
      end

      def DisplayHealth
            puts "My health is #{@health}"
            self
      end

end
