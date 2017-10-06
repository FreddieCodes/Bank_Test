require 'format'

describe DebitFormat do
  it 'should format a transaction' do
    transaction = instance_double("Transaction", :date => "10/10/2012",:amount => 1000, :balance => 1000)
    expect(DebitFormat.format(transaction)).to eq("10/10/2012 || || 1000.00 || 1000.00")
  end

end

describe CreditFormat do
  it 'should format a transaction' do
    transaction2 = "13/10/2012 || || 500.00 || 500.00"
    transaction = instance_double("Transaction", :date => "13/10/2012",:amount => 500, :balance => -500)
    expect(CreditFormat.format(transaction)).to eq("13/10/2012 || 500.00 || || -500.00")
  end

end
