require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(50, '01/10/17') }
  subject(:transaction2) { described_class.new(-50, '01/10/17') }

  it 'has an amount parameter which must be entered' do
    expect(transaction.amount).to be_truthy
  end

  it 'has a date parameter which must be entered' do
    expect(transaction.date).to be_truthy
  end

  xit 'has a transaction_type parameter which must be debit or credit' do
    expect(transaction.transaction_type).to eq('credit').or eq('debit')
  end

  xit 'should set the transaction type to credit if amount above 0' do
    expect(transaction.transaction_type).to eq("credit")
  end

  xit 'should set the transaction type to debit if amount below 0' do
    expect(transaction2.transaction_type).to eq("debit")
  end

  it 'should have a balance parameter' do
    expect(transaction).to respond_to(:balance)
  end
end
