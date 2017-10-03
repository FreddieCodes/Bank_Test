Bank (FreddieCodes)
=====================================

Files
---------
bank.rb
transaction.rb
statement.rb


Instructions
---------
You can run this program in irb.

```
$  irb
>> require './lib/bank.rb'
>> require './lib/transaction.rb'
>> require './lib/statement.rb'
>> client_name  = Bank.new
>> cient_name.change_balance(1000, "10-01-2012")
>> client_name.change_balance(1000, "10-01-2012")
>> client_name.change_balance(2000, "13-01-2012")
>> client_name.change_balance(-500, "14-01-2012")
>> client_name.print_statement

date || type || amount || balance
10-01-2012 || debit || £1000 || £1000
13-01-2012 || debit || £2000 || £3000
14-01-2012 || credit || £500 || £2500

```

* To create an account for your client `client_name = Bank.new`
* To make a deposit `client_name.change_balance(amount, date)`
* To make a withdrawal `client_name.change_balance(negative_amount, date)`
* To print statement `client_name.print_statement`

Testing
---------

```rspec```
