require_relative 'lib/bank'
require_relative 'lib/transaction'
require_relative 'lib/statement'

bank = Bank.new
bank.change_balance(1000, '10/01/2012')
bank.change_balance(2000, '13/01/2012')
bank.change_balance(-500, '14/01/2012')
bank.print_statement
