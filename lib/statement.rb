class Statement
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end

  def print
    header
    body
  end

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
       "#{transactions.date} || || #{transactions.amount.abs}.00 || #{transactions.balance}.00"
    else
       "#{transactions.date} || #{transactions.amount.abs}.00 || || #{transactions.balance}.00"
    end
  end

end
