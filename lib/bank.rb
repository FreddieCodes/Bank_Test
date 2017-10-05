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
    @transactions << Transaction.new(amount, date, @balance)
  end

  def print_statement(state = Statement)
    statement = state.new(@transactions)
    statement.print
  end
end
