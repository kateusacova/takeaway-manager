class UserInterface
  def initialize(io)
    @io = io
  end

  def run
    print_menu
    loop do
      user_selection
    end
  end

  def print_menu
    @io.puts "Hello! Please select one of the options below:"
    @io.puts "1. See menu"
    @io.puts "2. Place the order"
    @io.puts "3. Get receipt"
    @io.puts "4. Exit"
  end

  def user_selection
    @io.puts "Enter the selection number:"
    selection = @io.gets.chomp
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

  def see_menu #instance of Menu class
    "Menu"
  end

  def place_order
    "Order"
  end

  def get_receipt
    "Receipt"
  end


end

# To run the program:
# interface = UserInterface.new(Kernel)
# interface.run