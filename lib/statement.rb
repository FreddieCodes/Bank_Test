# class Statement
#   attr_reader :info
#   def initialize(bank)
#     @bank = bank
#     @info = bank.transactions
#   end
#
#   def print
#     header
#     body
#   end
#
#   private
#
#   def header
#     puts "date || type || amount || balance"
#   end
#
#   def body
#     @info.each do |element|
#       puts "#{element.date} || #{element.transaction_type} || £#{element.amount} || £#{element.balance}"
#     end
#   end
#
# end
