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
>> client_name.change_balance(1000, "10/01/2012")
>> client_name.change_balance(2000, "13/01/2012")
>> client_name.change_balance(-500, "14/01/2012")
>> client_name.print_statement

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
To run an example navigate to directory and run ruby test.rb in your terminal:

* To create an account for your client `client_name = Bank.new`
* To make a deposit `client_name.change_balance(amount, date)`
* To make a withdrawal `client_name.change_balance(negative_amount, date)`
* To print statement `client_name.print_statement`

Testing
---------

```rspec``` was used for testing
