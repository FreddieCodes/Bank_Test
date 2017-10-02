require_relative 'transaction'

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

  def print
    header
    body
  end

  private

  def header
    puts "date || type || amount || balance"
  end

  def body
    @transactions.each do |element|
      puts "#{element.date} || #{element.transaction_type} || £#{element.amount} || £#{element.balance}"
    end
  end
end



### test #####
bank = Bank.new
bank.increase_balance(50, "11/11/17")
bank.increase_balance(70, "11/11/17")
bank.decrease_balance(30, "15/11/17")
bank.print
