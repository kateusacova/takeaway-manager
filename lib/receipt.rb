require_relative "../lib/order.rb"
require_relative "../lib/menu.rb"

class Receipt

  def initialize(io, order) #instance of order and menu classes
    @io = io
    @order = order
    @summary = []
  end

  def print_receipt
    @io.puts "You haven't ordered anything yet." if @order.items.empty?
    
    formatted_receipt if !@order.items.empty?
  end

  def summarise
    @order.items.each { |k, v| 
    @summary <<  {item: k, quantity: v, price: 0, total_price: 0}
    }
    @summary.map { |position| 
      if position[:item] == "Adjaruli Khachapuri"
        position[:price] = 10.50
      elsif position[:item] == "Khinkali"
        position[:price] = 12.00
      elsif position[:item] == "Badrijani"
        position[:price] = 7.50
      end
      position[:total_price] = position[:price] * position[:quantity]
    }
    @summary
  end

  def total_receipt
    total = 0
    @summary.each { |position| total += position[:total_price]}
    total
  end

  def formatted_receipt
    @io.puts "\n"
    @io.puts "RECEIPT"
    @io.puts "*********************************"
    summarise.each { |i| 
    @io.puts "x #{i[:quantity]} #{i[:item]} £%0.2f" % [i[:total_price]]
    }
    @io.puts "TOTAL: £%0.2f" % [total_receipt]
    @io.puts "*********************************"
    @io.puts "\n"
  end
end
