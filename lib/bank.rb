require_relative 'transaction'
require_relative 'statement'
require_relative 'format'

class Bank
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    transaction = Transaction.new(amount, date, @balance)
    @transactions.unshift(CreditFormat.format(transaction))
  end

  def withdrawal(amount, date)
    @balance -= amount
    transaction = Transaction.new(amount, date, @balance)
    @transactions.unshift(DebitFormat.format(transaction))
  end

  def print_statement
    Statement.new(@transactions).print
  end

end
