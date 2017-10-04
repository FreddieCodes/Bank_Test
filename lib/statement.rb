class Statement
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
      puts "#{transaction.date} || #{transaction.transaction_type} || #{transaction.balance}"
    end
  end

end
