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
    @transactions.each do |transaction|
      puts "#{transaction.date} || #{transaction.transaction_type} || #{transaction.balance}.00"
    end
  end

end
