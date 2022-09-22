require_relative "../lib/interface.rb"

RSpec.describe UserInterface do
  it "Displays interface for the user" do
    io = double :io
    expect(io).to receive(:puts).with("Hello! Please select one of the options below:")
    expect(io).to receive(:puts).with("1. See menu")
    expect(io).to receive(:puts).with("2. Place the order")
    expect(io).to receive(:puts).with("3. Get receipt")
    expect(io).to receive(:puts).with("4. Exit")
    interface = UserInterface.new(io)
    interface.print_menu
  end

  it "Asks user for the selection" do
    io = double :io
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:gets).and_return("1")
    interface = UserInterface.new(io)
    expect(interface.user_selection).to eq "Menu"
  end

  it "Asks user for the selection" do
    io = double :io
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:gets).and_return("2")
    interface = UserInterface.new(io)
    expect(interface.user_selection).to eq "Order"
  end

  it "Asks user for the selection" do
    io = double :io
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:gets).and_return("3")
    interface = UserInterface.new(io)
    expect(interface.user_selection).to eq "Receipt"
  end

  it "Asks user for the selection" do
    io = double :io
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:gets).and_return("4")
    interface = UserInterface.new(io)
    expect{ interface.user_selection }.to raise_error(SystemExit)
  end

  it "Loops until user enters valid selection " do
    io = double :io
    expect(io).to receive(:puts).with("Hello! Please select one of the options below:")
    expect(io).to receive(:puts).with("1. See menu")
    expect(io).to receive(:puts).with("2. Place the order")
    expect(io).to receive(:puts).with("3. Get receipt")
    expect(io).to receive(:puts).with("4. Exit")
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).and_return("I don't understand, try again.")
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:gets).and_return("4")
    
    interface = UserInterface.new(io)
    expect{ interface.run }.to raise_error(SystemExit)
  end

end

