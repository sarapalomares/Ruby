class Human

  def accessInfo(person)
    # work for private functions but not instances
    saySomething

    # works for protected because we check it first
    person.saySomething
  end

  private

  def saySomething
    puts "Hello World"
  end

  def saySomethingElse
    puts "hello again"

  end

end


# class DataB
#
#   def showUsers
#     puts "here are the users"
#   end
#
#   private
#
#   def showDbPassword
#     puts "show db Password"
#   end
#
#
# end


person1 = Human.new
person2 = Human.new

person1.accessInfo(person2)

# person1.saySomething
