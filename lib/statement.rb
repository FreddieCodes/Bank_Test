class Statement
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end

  def print
    header
    body
  end

  private

  def header
    puts 'date || credit || debit || balance'
  end

  def body
    @transactions.reverse.each do |transaction|
      puts format_amount(transaction)
    end
  end

  def format_amount(transactions)
    type = transactions.transaction_type
    if type == "debit"
      debit_row(transactions)
    else
      credit_row(transactions)
    end
  end

  def debit_row(transactions)
    "#{transactions.date} || || #{transactions.amount.abs}.00 || #{transactions.balance}.00"
  end

  def credit_row(transactions)
    "#{transactions.date} || #{transactions.amount.abs}.00 || || #{transactions.balance}.00"
  end

end
