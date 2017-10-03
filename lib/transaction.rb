class Transaction
  attr_reader :amount, :date, :balance

  def initialize(amount, date, balance = nil)
    @amount = amount
    @date = date
    @balance = balance
  end

  def transaction_type
    if @amount > 0
      @transaction_type = "£#{@amount.abs} ||"
    else
      @transaction_type = "|| £#{@amount.abs}"
    end
  end

end
