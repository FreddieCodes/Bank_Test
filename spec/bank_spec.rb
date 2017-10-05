require 'bank'

describe Bank do
  subject(:bank) { described_class.new }
  context 'Balance' do
    it 'balance has a default value of 0' do
      expect(bank.balance).to eq(0)
    end

    it 'balance can be increased by a set amount' do
      bank.deposit(10, '11/11/2017')
      expect(bank.balance).to eq(10)
    end

    it 'balance can be decreased by a set amount' do
      bank.withdrawal(5, '11/11/2017')
      expect(bank.balance).to eq(-5)
    end
  end

  context 'Transactions' do
    it 'transactions default is an empty array' do
      expect(bank.transactions.class).to eq(Array)
      expect(bank.transactions.length).to eq(0)
    end

    it 'transactions are stored in the transactions array' do
      bank.deposit(10, '11/11/2017')
      expect(bank.transactions.length).to eq(1)
    end

    it 'transactions are stored in the transactions array' do
      bank.deposit(10, '11/11/2017')
      bank.withdrawal(5, '12/11/2017')
      expect(bank.transactions.length).to eq(2)
    end
  end

  context 'print_statement' do
    it 'prints out a header followed by a transaction' do
      header = 'date || credit || debit || balance'
      bank.deposit(10, '11/11/17')
      expect { bank.print_statement }.to output("#{header}\n11/11/17 || 10.00 || || 10.00\n").to_stdout
    end

    it 'prints out a header followed by all transactions' do
      header = 'date || credit || debit || balance'
      bank.deposit(10, '11/11/17')
      bank.withdrawal(5, '12/11/17')
      expect { bank.print_statement }.to output("#{header}\n12/11/17 || || 5.00 || 5.00\n11/11/17 || 10.00 || || 10.00\n").to_stdout
    end

    it 'fullfills the acceptance criteria' do
      header = 'date || credit || debit || balance'
      bank.deposit(1000, '10/01/2012')
      bank.deposit(2000, '13/01/2012')
      bank.withdrawal(500, '14/01/2012')
      expect { bank.print_statement }.to output("#{header}\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
