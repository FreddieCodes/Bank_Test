class Statement

  def header
    "date || type || amount || balance"
  end

  def print
    puts header
  end

  def body(array)
    "#{array[0].date} || #{array[0].transaction_type} || £#{array[0].amount} || £#{array[0].balance}"
  end 

end
