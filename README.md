# Fresher K4 Exercises
## OOP

### Exercise 1:
Create a class `Person` with attributes: `name` and `age` of type string.

Create a `display` method that displays the name and age of an object created via the Person class.

Create a child class `Student`  which inherits from the `Person` class and which also has a section attribute.

Override a method `display` that displays the name, age, and section of an object created via the Student class.

Create a student object via an instantiation on the Student class and then test the `display_student` method.

Example:
```ruby
p = Person("Tomas Wild", 37)
p.display
# Detail:
# - name: Tomas Wild
# - age: 37

student = Student("Albert", 23, "Mathematics")
student.display
# Detail:
# - name: Albert
# - age: 23
# - section: Mathematics
```

### Exercise 2:
Create a class called `BankAccount` which represents a bank account, having as attributes:
  -  `account_number` (numeric type)
  -  `name` (name of the account owner as string type)
  -  `balance`

Create a constructor with parameters: account_number, name, and balance.

Create a `deposit` method that manages the deposit actions.

Create a `withdrawal` method that manages withdrawal actions. withdraw fee is `5%` of the withdrawn amount.
 - remain balance = balance - (withdrawn amount + withdrawn amount*5%)

Ex: Your balance is `$1000`,  invoke `withdrawal(100)`, the balance remain is: `$895`

Create a `display` method to display account details.

Example:
```ruby
account = BankAccount(2178514584, "Albert" , 2700)
account.withdrawal(300)
# print out: 'Your current balance is: $2385'
account.deposit(200)
# print out: 'Your current balance is: $2585'
account.display
# # The ouput is:
# Account number:  2178514584
# Account name:  Albert
# Account balance:  $2585
```

### Exercise 3:
Write a `Geometry` class with a default constructor that has no parameters.

Write a methode in `Geometry` class called `distance` that allow to compute a distance between two points a = (a1, a2), b = (b1, b2) 

Write a method in the `Geometry` class called `middle` allowing to determine the middle of points a and b.

Write a `Triangle` class that has a constructor with 3 arguments as instances of the `Geometry` class. then write a method called `triangle_perimeter`  allowing to compute the perimeter of the triangle. Ex:
```ruby
a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 20)
triangle = Triangle.new(a, b, c)
triangle.triangle_perimeter
```

Write a class method called `triangle_isoscel?` which returns a `true` if the triangle is isosceles and `false` if not.
