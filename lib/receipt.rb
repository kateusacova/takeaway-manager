require_relative "../lib/order.rb"

class Receipt

  def initialize(order, menu) #instance of order and menu classes
    @order = order 
    @menu = menu
  end

  def total

  end



end

# e.g. my array of hashes =
# {:item=>"2", :quantity=>"3"}
# {:item=>"1", :quantity=>"2"}

# menu = {
#   "Adjaruli Khachapuri" => 10.50,
#   "Khinkali" => 12,
#   "Badrijani" => 7.50
# }