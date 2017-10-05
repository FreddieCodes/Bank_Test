class Transaction
  attr_reader :amount, :date, :balance

  def initialize(amount, date, balance = nil)
    @amount = amount
    @date = date
    @balance = balance
  end

end
