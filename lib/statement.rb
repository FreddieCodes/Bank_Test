class Statement
  def initialize(transactions)
    @transactions = transactions
  end

  def print
    header
    body
  end

  # private

  def header
    puts 'date || type || amount || balance'
  end

  def body
    @transactions.each do |element|
      puts "#{element.date} || #{element.transaction_type} || £#{element.amount.abs} || £#{element.balance}"
    end
  end
end
