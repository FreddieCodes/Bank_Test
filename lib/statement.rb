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
      puts transaction
    end
  end

end
