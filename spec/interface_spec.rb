require_relative "../lib/interface.rb"

RSpec.describe UserInterface do

  it "Loops until user enters valid selection " do
    io = double :io
    menu = double :menu
    expect(io).to receive(:puts).with("\n")
    expect(io).to receive(:puts).with("*********************************")
    expect(io).to receive(:puts).with("Welcome to Little Georgia!")
    expect(io).to receive(:puts).with("1. See menu")
    expect(io).to receive(:puts).with("2. Place the order")
    expect(io).to receive(:puts).with("3. Get receipt")
    expect(io).to receive(:puts).with("4. Exit")
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:puts).with("*********************************")
    expect(io).to receive(:puts).with("\n")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("You selected option 0.")
    expect(io).to receive(:puts).with("\n")
    expect(io).to receive(:puts).and_return("I don't understand, try again.")
    expect(io).to receive(:puts).with("\n")
    expect(io).to receive(:puts).with("*********************************")
    expect(io).to receive(:puts).with("1. See menu")
    expect(io).to receive(:puts).with("2. Place the order")
    expect(io).to receive(:puts).with("3. Get receipt")
    expect(io).to receive(:puts).with("4. Exit")
    expect(io).to receive(:puts).with("Enter the selection number:")
    expect(io).to receive(:puts).with("*********************************")
    expect(io).to receive(:puts).with("\n")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("You selected option 4.")
    expect(io).to receive(:puts).with("\n")
    
    interface = UserInterface.new(io, menu)
    expect{ interface.run }.to raise_error(SystemExit)
  end


  # xit "Asks user for the selection" do
    #   io = double :io
    #   expect(io).to receive(:puts).with("Enter the selection number:")
    #   expect(io).to receive(:gets).and_return("1")
    #   interface = UserInterface.new(io)
    #   #menu = double(:menu, display: )
    #   expect(interface.user_selection).to eq "Menu"
    # end
  
    # xit "Asks user for the selection" do
    #   io = double :io
    #   expect(io).to receive(:puts).with("Enter the selection number:")
    #   expect(io).to receive(:gets).and_return("2")
    #   interface = UserInterface.new(io)
    #   expect(interface.user_selection).to eq "Order"
    # end
  
    # xit "Asks user for the selection" do
    #   io = double :io
    #   expect(io).to receive(:puts).with("Enter the selection number:")
    #   expect(io).to receive(:gets).and_return("3")
    #   interface = UserInterface.new(io)
    #   expect(interface.user_selection).to eq "Receipt"
    # end
  
    # xit "Asks user for the selection" do
    #   io = double :io
    #   expect(io).to receive(:puts).with("Enter the selection number:")
    #   expect(io).to receive(:gets).and_return("4")
    #   interface = UserInterface.new(io)
    #   expect{ interface.user_selection }.to raise_error(SystemExit)
    # end
end

