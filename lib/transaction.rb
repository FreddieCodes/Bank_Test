class Transaction

attr_reader :amount, :date, :transaction_type

  def initialize(amount, date, transaction_type)
    @amount = amount
    @date = date
    @transaction_type = transaction_type
  end

end
