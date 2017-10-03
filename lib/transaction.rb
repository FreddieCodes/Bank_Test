class Transaction
  attr_reader :amount, :date, :balance

  def initialize(amount, date, balance = nil)
    @amount = amount
    @date = date
    @balance = balance
  end

  # private

  def transaction_type
    if @amount > 0
      @transaction_type = 'credit'
    else
      @transaction_type = 'debit'
    end
  end

end
