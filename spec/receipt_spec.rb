require_relative "../lib/receipt.rb"

RSpec.describe Receipt do
  it "Returns message if order hasn't been made yet" do
    io_receipt = double :io
    order = double(:order, items: {})
    expect(io_receipt).to receive(:puts).with("You haven't ordered anything yet.")
    receipt = Receipt.new(io_receipt, order)
    receipt.print_receipt
  end

  it "Prints receipt if order exists" do
    io_receipt = double :io
    order = double(:order, items: {"Khinkali"=>3, "Adjaruli Khachapuri"=>4})
    expect(io_receipt).to receive(:puts).with("\n")
    expect(io_receipt).to receive(:puts).with("RECEIPT")
    expect(io_receipt).to receive(:puts).with("*********************************")
    expect(io_receipt).to receive(:puts).with("x 3 Khinkali £36.00")
    expect(io_receipt).to receive(:puts).with("x 4 Adjaruli Khachapuri £42.00")
    expect(io_receipt).to receive(:puts).with("TOTAL: £78.00")
    expect(io_receipt).to receive(:puts).with("*********************************")
    expect(io_receipt).to receive(:puts).with("\n")
    receipt = Receipt.new(io_receipt, order)
    receipt.print_receipt
  end

  it "Returns array of hashes containing order info" do
    io_receipt = double :io
    order = double(:order, items: {"Khinkali"=>3, "Adjaruli Khachapuri"=>4})
    receipt = Receipt.new(io_receipt, order)
    expect(receipt.summarise).to eq [{item: "Khinkali", quantity: 3, price: 12, total_price: 36.00},
    {item: "Adjaruli Khachapuri", quantity: 4, price: 10.50, total_price: 42.00}]
  end

  it "Return total amount to be paid for the order" do
    io_receipt = double :io
    order = double(:order, items: {"Khinkali"=>3, "Adjaruli Khachapuri"=>4})
    receipt = Receipt.new(io_receipt, order)
    receipt.summarise
    expect(receipt.total_receipt).to eq 78.00
  end

end
