require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  it "should have a print method" do
    expect(statement).to respond_to(:print)
  end

end
