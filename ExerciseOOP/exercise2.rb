class BankAccount
  attr_accessor :account_number, :name, :balance

  def initialize(account_number, name, balance)
    @account_number = account_number
    @name = name
    @balance = balance
  end

  def deposit(money)
    @balance += money
    puts "Your current balance is: $#{@balance}"
  end

  def withdrawal(money)
    @balance -= (money + ((money * 5) / 100))
    puts "Your current balance is: $#{@balance}"
  end

  def display
    puts "Account number: #{account_number}"
    puts "Account name: #{name}"
    puts "Account balance: #{balance}"
  end
end
a = BankAccount.new(123_456, 'tung', 2000)
a.withdrawal(100)
a.deposit(200)
a.withdrawal(100)
a.deposit(200)
a.display
