class Car
      attr_accessor :color, :miles

      def initialize
            @miles = 0
      end

      def drive_to_work
            @miles +=15
            self
      end
end

class Tesla < Car
      attr_accessor :charge

      def initialize
            @charge = 100
            super
      end
end
