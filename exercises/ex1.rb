# frozen_string_literal: true

# class/Person
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def display
    puts "-name : #{@name}"
    puts "-age : #{@age}"
  end
end

p = Person.new('Tomas Wild', 37)
p.display

# frozen_string_literal: true

# class/Student
class Student < Person
  def initialize(name, age, section)
    super(name, age)
    @section = section
  end

  def display
    super
    puts "-section : #{@section}"
  end
end

student = Student.new('Albert', 23, 'Mathematics')
student.display
