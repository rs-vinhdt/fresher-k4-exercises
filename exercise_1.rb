class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def display
    puts "Detail:\n - name: #{@name}\n - age: #{@age}"
  end
end

class Student < Person
  def initialize(name, age, section)
    super(name, age)
    @section = section
  end

  def display
    super
    puts " - section: #{@section}"
  end
end

Student.new('Albert', 23, 'Mathematics').display
