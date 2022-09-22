class Order

  def initialize(io)
    @io = io
    @order = []
    @positions = ["1","2","3"]
  end

  def run
    print_instructions
    collect
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
      quantity = @io.gets.chomp
      
      if @positions.include?(item)
        @order << {item: item, quantity: quantity}
      else
        @io.puts "Invalid selection, please enter the dish available on the menu:"
      end

      @io.puts "Enter menu item number to order:"
      item = @io.gets.chomp
    end
  end

  def total
    @order
  end
end

# order = Order.new(Kernel)
# order.run

# Something not working here
# @order.map { |position| 
# if position[:item] == item
#   position[:quantity] += 1
# else 
#   @order << {item: item, quantity: 1}
# end
# }