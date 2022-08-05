class BankAccount
  def initialize(account_number, name, balance)
    @account_number = account_number
    @name = name
    @balance = balance
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    puts "Your current balance is: $#{@balance.round(0)}"
  end

  def withdrawal(withdrawal_amount)
    @balance -= withdrawal_amount + withdrawal_amount * 0.05
    puts "Your current balance is: $#{@balance.round(0)}"
  end

  def display
    puts "Account number: #{@account_number}\nAccount name: #{@name}\nAccount balance: $#{@balance.round(0)}"
  end
end

account = BankAccount.new(2_178_514_584, 'Albert', 2700)
account.withdrawal(300)
account.deposit(200)
account.display
