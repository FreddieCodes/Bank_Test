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
    transaction = Transaction.new(amount, date, @balance)
    @transactions << transaction
  end

  def print_statement
    Statement.new(@transactions).print
  end
end

bank = Bank.new
bank.change_balance(100,"10-10-2016")
bank.change_balance(150,"10-10-2016")
p bank.transactions
bank.print_statement
