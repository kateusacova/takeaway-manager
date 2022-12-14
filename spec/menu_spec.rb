require_relative "../lib/menu.rb"

RSpec.describe Menu do
  it "Displays menu" do
    io_menu = double :io
    expect(io_menu).to receive(:puts).with("               MENU                ")
    expect(io_menu).to receive(:puts).with("*********************************")
    expect(io_menu).to receive(:puts).with("1. Adjaruli Khachapuri £10.50")
    expect(io_menu).to receive(:puts).with("2. Khinkali £12.00")
    expect(io_menu).to receive(:puts).with("3. Badrijani £7.50")
    expect(io_menu).to receive(:puts).with("*********************************")
    menu = Menu.new(io_menu)
    menu.display
  end
end