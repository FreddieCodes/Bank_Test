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

bank = Bank.new
bank.change_balance(1000, '10/01/2012')
bank.change_balance(2000, '13/01/2012')
bank.change_balance(-500, '14/01/2012')
bank.print_statement
