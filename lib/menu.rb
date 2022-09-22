class Menu
  #attr_accessor :items -  might need it later?

  def initialize(io)
    @io = io
    @menu = {
      "Adjaruli Khachapuri" => 10.50,
      "Khinkali" => 12,
      "Badrijani" => 7.50
    }
  end

  def display
    @io.puts "MENU".center(35)
    @io.puts "*********************************"
    @menu.each.with_index(1) { |(key, value), index| 
    @io.puts "#{index}. #{key} £%0.2f" % [value]
    }
    @io.puts "*********************************"
  end
end

# menu = Menu.new(Kernel)
# menu.display