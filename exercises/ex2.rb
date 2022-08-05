# frozen_string_literal: true

# class/BankAccount
class BankAccount
  attr_writer :account_number, :name, :balance

  def initialize(account_number, name, balance)
    @account_number = account_number
    @name = name
    @balance = balance
  end

  def deposit(deposits)
    @balance += deposits
    puts "Your current balance is: $ #{@balance}"
  end

  def withdrawal(withdrawals)
    @balance -= (withdrawals + withdrawals * 5 / 100)
    puts "Your current balance is:$ #{@balance}"
  end

  def display
    puts "Account number: #{@account_number}"
    puts "Account name: #{@name}"
    puts "Account balance: #{@balance}"
  end
end

account = BankAccount.new(2_178_514_584, 'Albert', 2700)
account.withdrawal(300)
# print out: 'Your current balance is: $2385'
account.deposit(200)
# print out: 'Your current balance is: $2585'
account.display
