class Transaction
  attr_reader :amount, :date, :balance

  def initialize(amount, date, balance = nil)
    @amount = amount
    @date = date
    @balance = balance
  end

  def transaction_type
    if credit
      @transaction_type = "£#{@amount.abs} ||"
    else
      @transaction_type = "|| £#{@amount.abs}"
    end
  end

  def credit
    @amount > 0
  end

  def debit
    @amount < 0
  end

end
