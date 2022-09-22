require_relative "../lib/menu.rb"

class UserInterface
  def initialize(io, menu)
    @io = io
    @menu = menu
  end

  def run
    print_welcome
    loop do
      print_interface
      user_selection(@io.gets.chomp)
    end
  end

  def print_welcome
    @io.puts "Welcome to Little Georgia!"
  end

  def print_interface
    @io.puts "\n"
    @io.puts "*********************************"
    @io.puts "1. See menu"
    @io.puts "2. Place the order"
    @io.puts "3. Get receipt"
    @io.puts "4. Exit"
    @io.puts "Enter the selection number:"
    @io.puts "*********************************"
    @io.puts "\n"
  end

  def see_menu
    @menu.display
  end

  def user_selection(selection)
    @io.puts "You selected option #{selection}."
    @io.puts "\n"
    case selection
    when "1"
      see_menu
    when "2"
      place_order
    when "3"
      get_receipt
    when "4"
      exit
    else 
      @io.puts "I don't understand, try again."
    end
  end

  def place_order
    "Order"
  end

  def get_receipt
    "Receipt"
  end


end

# To run the program:

# menu = Menu.new(Kernel)
# interface = UserInterface.new(Kernel, menu)
# interface.run

