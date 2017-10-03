class Statement
  def initialize(transactions)
    @transactions = transactions
  end

  def print
    header
    body
  end

  def header
    puts 'date || type || amount || balance'
  end

  def body
    @transactions.each do |el|
      puts "#{el.date} || #{el.transaction_type} || £#{el.amount.abs} || £#{el.balance}"
    end
  end
end
