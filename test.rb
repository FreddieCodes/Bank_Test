require_relative 'lib/bank'
require_relative 'lib/transaction'
require_relative 'lib/statement'

bank = Bank.new
bank.deposit(1000, '10/01/2012')
bank.deposit(2000, '13/01/2012')
bank.withdrawal(500, '14/01/2012')
bank.print_statement
