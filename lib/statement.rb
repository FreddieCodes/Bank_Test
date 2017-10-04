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
    puts 'date || credit || debit || balance'
  end

  def body
    @transactions.reverse.each do |transaction|
      puts "#{transaction.date} || #{transaction.transaction_type} || #{transaction.balance}"
    end
  end

  # def transaction_type
  #   if @amount > 0
  #     @transaction_type = "#{@amount.abs} ||"
  #   else
  #     @transaction_type = "|| #{@amount.abs}"
  #   end
  # end

end
