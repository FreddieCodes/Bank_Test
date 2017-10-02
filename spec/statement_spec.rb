require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  it "should have a print method" do
    expect(statement).to respond_to(:print)
  end

  it "should have a header method" do
    expect(statement).to respond_to(:header)
  end
end
