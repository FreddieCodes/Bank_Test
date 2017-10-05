class DebitFormat

def self.format(transaction = Transaction.new)
  return "#{transaction.date} || || #{transaction.amount.abs}.00 || #{transaction.balance}.00"
end

end

class CreditFormat

def self.format(transaction = Transaction.new)
  return "#{transaction.date} || #{transaction.amount.abs}.00 || || #{transaction.balance}.00"
end

end
