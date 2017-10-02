require 'bank'

describe Bank do
  it "balance has a default value of 0" do
    expect(subject.balance).to eq(0)
  end
end
