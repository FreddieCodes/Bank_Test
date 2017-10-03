class Transaction
  attr_reader :amount, :date, :transaction_type, :balance

  def initialize(amount, date, balance = nil)
    @amount = amount
    @date = date
    @transaction_type = assign_transaction_type
    @balance = balance
  end

  private

  def assign_transaction_type
    if @amount > 0
      @transaction_type = 'debit'
    else
      @transaction_type = 'credit'
    end
  end

end
