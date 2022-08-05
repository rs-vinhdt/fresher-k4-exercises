class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def display
    puts "Detail:\nname: #{name}\nage: #{age}"
  end
end

class Student < Person
  attr_accessor :section

  def initialize(name, age, section)
    super(name, age)
    @section = section
  end

  def display
    super
    puts "section: #{section}"
  end
end

p = Person.new('Tomas Wild', 37)
p.display
student = Student.new('Albert', 23, 'Mathematics')
student.display
