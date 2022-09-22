require_relative "../lib/menu.rb"

class Order

  def initialize(io, menu)
    @io = io
    @order = {}
    @menu = menu
  end

  def run
    print_instructions
    collect
    puts total
  end

  def print_instructions
    @io.puts "Enter item and quantity when prompted."
    @io.puts "To finish, just hit return."
  end

  def collect
    @io.puts "Enter menu item number to order:"
    item = @io.gets.chomp
    

    while !item.empty? do
      @io.puts "Enter quantity to order:"
      quantity = @io.gets.chomp.to_i
      
      if ["1","2","3"].include?(item)
        add_item(item, quantity)
      else
        @io.puts "Invalid selection, please enter the dish available on the menu:"
      end

      @io.puts "Enter menu item number to order:"
      item = @io.gets.chomp
    end
  end

  def add_item(item, quantity)
    if @order.has_key?(item)
      @order[item] += quantity
    else
      @order[item] = quantity
    end
  end

  def total
    @order
  end
end

menu = Menu.new(Kernel)
order = Order.new(Kernel, menu)
order.run

# Change the order of collect method to give Invalid message straigh after
# selection is invalid (and not after quantity prompt)

# Need to sum repeating items!
# And then print with names and quantity

# e.g. my array of hashes =
# [{:item=>"2", :quantity=>"3"} => p0
# {:item=>"1", :quantity=>"2"} => p1
# {:item=>"1", :quantity=>"3"}] => p2

# menu.items = {
#   "Adjaruli Khachapuri" => 10.50,
#   "Khinkali" => 12,
#   "Badrijani" => 7.50
# }