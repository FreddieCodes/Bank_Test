class Bank

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def increase_balance(amount, date)
    # balance before transaction added so that the balance is current
    @balance += amount
    @transactions << Transaction.new(amount, date, type = "debit", balance = @balance)
  end

  def decrease_balance(amount, date)
    @balance -= amount
    @transactions << Transaction.new(amount, date, type = "credit", balance = @balance)
  end

end
