require_relative "../lib/interface.rb"
require_relative "../lib/menu.rb"

RSpec.describe "Takeaway manager" do
  it "Displays the menu" do
    io_interface = double :io
    io_menu = double :io
    expect(io_menu).to receive(:puts).with("               MENU                ")
    expect(io_menu).to receive(:puts).with("*********************************")
    expect(io_menu).to receive(:puts).with("1. Adjaruli Khachapuri £10.50")
    expect(io_menu).to receive(:puts).with("2. Khinkali £12.00")
    expect(io_menu).to receive(:puts).with("3. Badrijani £7.50")
    expect(io_menu).to receive(:puts).with("*********************************")

    menu = Menu.new(io_menu)
    interface = UserInterface.new(io_interface, menu)
    interface.see_menu
  end
end
