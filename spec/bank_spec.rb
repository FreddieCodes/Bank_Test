require 'bank'

describe Bank do
  it "balance has a default value of 0" do
    expect(subject.balance).to eq(0)
  end

  it "balance can be increased by a set amount" do
    subject.increase_balance(10)
    expect(subject.balance).to eq(10)
  end

  it "balance can be decreased by a set amount" do
    subject.decrease_balance(5)
    expect(subject.balance).to eq(-5)
  end

end
