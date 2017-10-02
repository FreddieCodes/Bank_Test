class Bank

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions =[]
  end

  def increase_balance(amount, date)
    @transactions << Transaction.new(amount, date, type = "debit")
    @balance += amount
  end

  def decrease_balance(amount, date)
    @transactions << Transaction.new(amount, date, type = "credit")
    @balance -= amount
  end

end
