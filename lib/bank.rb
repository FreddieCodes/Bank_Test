class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end

end
