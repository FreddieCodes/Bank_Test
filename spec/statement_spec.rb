require 'statement'

describe Statement do
  before(:each) do
    transaction1 = instance_double("Transaction", amount: 1000, date: "10/10/202", balance: 1000)
    transaction2 = instance_double("Transaction", amount: -500, date: "13/10/2012",  balance: 500)
    allow(transaction1).to receive(:transaction_type).and_return("credit")
    allow(transaction2).to receive(:transaction_type).and_return("debit")
    @statement = described_class.new([transaction1, transaction2])
  end

  it 'should have a print method' do
    expect(@statement).to respond_to(:print)
  end

  it 'should be able to print a header' do
    statement = described_class.new([])
    header_string = 'date || credit || debit || balance'
    expect { statement.print }.to output("#{header_string}\n").to_stdout
  end

  it 'can prints out a header followed by multiple transactions' do
    header = 'date || credit || debit || balance'
    expect { @statement.print }.to output("#{header}\n13/10/2012 || || 500.00 || 500.00\n10/10/202 || 1000.00 || || 1000.00\n").to_stdout
  end

end
