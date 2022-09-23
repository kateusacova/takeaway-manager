class Order

  def initialize(io)
    @io = io
    @order = {}
  end

  def run
    print_instructions
    collect
    print_total
  end

  def print_instructions
    @io.puts "Enter item and quantity when prompted."
    @io.puts "To finish, just hit return."
  end

  def collect
    @io.puts "Enter menu item number to order:"
    item = @io.gets.chomp

    while !item.empty? do
      
      if ["1","2","3"].include?(item)
        @io.puts "Enter quantity to order:"
        quantity = @io.gets.chomp.to_i
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

  def itemised_total
    @order.transform_keys! { |k|
      if k == "1"
        k = "Adjaruli Khachapuri" 
      elsif k == "2"
        k = "Khinkali" 
      elsif k == "3"
        k = "Badrijani"
      end
    }
  end

  def print_total
    @io.puts "You ordered:"
    itemised_total.each { |k, v| @io.puts "x #{v} #{k}" }
  end

  def items
    @order
  end

end

# order = Order.new(Kernel)
# order.run
