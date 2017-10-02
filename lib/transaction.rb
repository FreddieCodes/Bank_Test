class Transaction

attr_reader :amount, :date, :transaction_type, :balance

  def initialize(amount, date, transaction_type, balance = nil )
    @amount = amount
    @date = date
    @transaction_type = transaction_type
    @balance = balance
  end

end
