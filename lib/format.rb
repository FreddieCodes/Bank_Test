class DebitFormat

  def self.format(trans)
    return "#{trans.date} || || #{trans.amount.abs}.00 || #{trans.balance}.00"
  end

end

class CreditFormat

  def self.format(trans)
    return "#{trans.date} || #{trans.amount.abs}.00 || || #{trans.balance}.00"
  end

end
