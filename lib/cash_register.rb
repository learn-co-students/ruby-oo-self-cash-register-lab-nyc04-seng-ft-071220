class CashRegister
    attr_accessor :total, :items, :discount, :last_total
    def initialize (employee_discount=0)
        @discount = employee_discount
        @total = 0
        @items = []
    end

    def add_item(item_name,item_price,item_quantity=1)
        @total += item_price * item_quantity
        item_quantity.times do
            @items << item_name
        end
        @last_total = item_quantity * item_price
    end

    def apply_discount
        if @discount  != 0
            to_discount = ((100.0 - @discount.to_f)/100)
            @total = (@total * to_discount).to_i
            "After the discount, the total comes to $#{@total}."
        else
        "There is no discount to apply."
        end

    end

    def void_last_transaction
        @total = @total - @last_total
    end
    
end
