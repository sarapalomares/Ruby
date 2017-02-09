class Project
      attr_accessor :name, :description

      def initialize (p_name, description)
            @project_name = p_name
            @project_description = description
      end

      def name
            puts @project_name
      end

      def elevator_pitch
            puts "The project name is #{@project_name} and the description is: #{@project_description}"
      end

end
project1 = Project.new("Dojo", "learning how to code 101")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"
