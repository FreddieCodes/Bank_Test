require_relative 'transaction'
require_relative 'statement'
require_relative 'formatter'
class Bank
  attr_reader :balance, :transactions, :formatted_list

  def initialize
    @balance = 0
    @transactions = []
  end

  def change_balance(amount, date)
    @balance += amount
    transaction = Transaction.new(amount, date, @balance)
    @transactions.unshift(transaction)
    # @form
    atted_list << Formatter.new(transaction)
  end

  def print_statement
    Statement.new(@transactions).print
  end

end
