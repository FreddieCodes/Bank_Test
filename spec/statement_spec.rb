require 'statement'

describe Statement do
  before(:each) do
    transaction1 = "10/10/2012 || 1000.00 || || 1000.00"
    transaction2 = "13/10/2012 || || 500.00 || 500.00"
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
    row1 = "10/10/2012 || 1000.00 || || 1000.00\n"
    row2 = "13/10/2012 || || 500.00 || 500.00\n"
    expect { @statement.print }.to output("#{header}\n#{row1}#{row2}").to_stdout
  end

end
