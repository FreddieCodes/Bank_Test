require 'bank'

describe Bank do
  subject(:bank) { described_class.new }
  context "Balance" do
    it "balance has a default value of 0" do
      expect(bank.balance).to eq(0)
    end

    it "balance can be increased by a set amount" do
      bank.increase_balance(10, "11/11/17")
      expect(bank.balance).to eq(10)
    end

    it "balance can be decreased by a set amount" do
      bank.decrease_balance(5, "11/11/17")
      expect(bank.balance).to eq(-5)
    end
  end

  context "transactions" do
    it "transactions default is an empty array" do
      expect(bank.transactions.class).to eq(Array)
      expect(bank.transactions.length).to eq(0)
    end

    it "transactions are stored in the transactions array" do
      bank.increase_balance(10,"11/11/17")
      expect(bank.transactions.length).to eq(1)
    end

    it "transactions are stored in the transactions array" do
      bank.increase_balance(10,"11/11/17")
      bank.decrease_balance(5, "12/11/17")
      expect(bank.transactions.length).to eq(2)
    end

  end




end
