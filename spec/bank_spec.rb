require 'bank'

describe Bank do
  subject(:bank) { described_class.new }
  it "balance has a default value of 0" do
    expect(bank.balance).to eq(0)
  end

  it "balance can be increased by a set amount" do
    subject.increase_balance(10)
    expect(bank.balance).to eq(10)
  end

  it "balance can be decreased by a set amount" do
    subject.decrease_balance(5)
    expect(bank.balance).to eq(-5)
  end

end
