require_relative 'transaction'
require_relative 'statement'
class Bank

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def increase_balance(amount, date)
    @balance += amount
    @transactions << Transaction.new(amount, date, type = "debit", balance = @balance)
  end

  def decrease_balance(amount, date)
    @balance -= amount
    @transactions << Transaction.new(amount, date, type = "credit", balance = @balance)
  end

  def print_statement
    statement = Statement.new(@transactions).print
  end
end



### test #####
# bank = Bank.new
# bank.increase_balance(50, "11/11/17")
# bank.increase_balance(70, "11/11/17")
# bank.decrease_balance(30, "15/11/17")
# bank.get_statement
