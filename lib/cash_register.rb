
require 'pry'

class CashRegister

    attr_accessor :discount, :total, :items, :last_total 

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, count = 1)
        @total += price * count 
        count.times do
            @items.push(title)
        end
        @last_total = price * count 
        # binding.pry
    end

    def apply_discount
        if @discount > 0 
            amount_off = (@total * 0.20).to_i
            @total -= amount_off
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_total
    end


end


