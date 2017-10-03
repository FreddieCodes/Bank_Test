require_relative 'transaction'
require_relative 'statement'
class Bank
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def change_balance(amount, date)
    @balance += amount
    @transactions << Transaction.new(amount, date, balance = @balance)
  end

  def print_statement
    statement = Statement.new(@transactions).print
  end
end

### test #####
# bank = Bank.new
# bank.change_balance(-50, "11/11/17")
# bank.change_balance(70, "11/11/17")
# bank.print_statement
